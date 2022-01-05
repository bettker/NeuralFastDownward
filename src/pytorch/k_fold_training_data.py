import logging
from random import shuffle as randshuffle
import torch
import numpy as np
import random
from sklearn.model_selection import train_test_split
from torch.utils.data import DataLoader
from src.pytorch.utils.default_args import (
    DEFAULT_BATCH_SIZE,
    DEFAULT_NORMALIZE_OUTPUT,
    DEFAULT_NUM_FOLDS,
    DEFAULT_OUTPUT_LAYER,
    DEFAULT_SHUFFLE,
    DEFAULT_RANDOM_SEED,
    DEFAULT_SHUFFLE_SEED,
    DEFAULT_DATALOADER_NUM_WORKERS,
    DEFAULT_NORMALIZE_OUTPUT,
    DEFAULT_CLAMPING,
    DEFAULT_REMOVE_GOALS,
    DEFAULT_STANDARD_FIRST,
    DEFAULT_CONTRAST_FIRST,
    DEFAULT_INTERCALATE_SAMPLES,
    DEFAULT_CUT_NON_INTERCALATED_SAMPLES,
    DEFAULT_MODEL,
)

from src.pytorch.training_data import (
    InstanceDataset,
    load_training_state_value_pairs,
)

_log = logging.getLogger(__name__)


class KFoldTrainingData:
    def __init__(
        self,
        samples_file: str,
        batch_size: int = DEFAULT_BATCH_SIZE,
        num_folds: int = DEFAULT_NUM_FOLDS,
        output_layer: str = DEFAULT_OUTPUT_LAYER,
        shuffle: bool = DEFAULT_SHUFFLE,
        seed: int = DEFAULT_RANDOM_SEED,
        shuffle_seed: int = DEFAULT_SHUFFLE_SEED,
        data_num_workers: int = DEFAULT_DATALOADER_NUM_WORKERS,
        normalize: bool = DEFAULT_NORMALIZE_OUTPUT,
        clamping: int = DEFAULT_CLAMPING,
        remove_goals: bool = DEFAULT_REMOVE_GOALS,
        standard_first: bool = DEFAULT_STANDARD_FIRST,
        contrast_first: bool = DEFAULT_STANDARD_FIRST,
        intercalate_samples: int = DEFAULT_INTERCALATE_SAMPLES,
        cut_non_intercalated_samples: bool = DEFAULT_CUT_NON_INTERCALATED_SAMPLES,
        model: str = DEFAULT_MODEL,
    ):
        self.state_value_pairs, self.domain_max_value = load_training_state_value_pairs(
            samples_file,
            clamping,
            remove_goals,
        )

        self.normalize = normalize
        if self.normalize:
            for i in range(len(self.state_value_pairs)):
                self.state_value_pairs[i][1] /= self.domain_max_value
        self.batch_size = batch_size
        self.num_folds = num_folds
        self.output_layer = output_layer
        self.shuffle = shuffle
        self.seed = seed
        self.shuffle_seed = shuffle_seed
        self.data_num_workers = data_num_workers
        self.standard_first = standard_first
        self.contrast_first = contrast_first
        self.intercalate_samples = intercalate_samples
        self.cut_non_intercalated_samples = cut_non_intercalated_samples
        self.model = model
        self.kfolds = self.generate_kfold_training_data()

    def generate_kfold_training_data(self) -> list:
        """
        Generates the folds.
        Returns two list of tuples of size num_folds: dataloaders and problems.
        The first item corresponds to train set, and the second to test set.
        """
        _log.info(f"Generating {self.num_folds}-fold...")

        kfolds = []
        instances_per_fold = int(len(self.state_value_pairs) / self.num_folds)
        for i in range(self.num_folds):
            training_set, test_set = [], []
            if self.num_folds == 1:
                # Training set = 80% of the data.
                # Test set = 20% of the data.
                training_set, test_set = train_test_split(
                    self.state_value_pairs,
                    test_size=0.2,
                    shuffle=self.shuffle,
                    random_state=self.shuffle_seed,
                )
            else:
                for j in range(len(self.state_value_pairs)):
                    if int(j / instances_per_fold) == i:
                        test_set.append(self.state_value_pairs[j])
                    else:
                        training_set.append(self.state_value_pairs[j])

            # If necessary, change the ordering of the data.
            if (
                self.standard_first
                or self.contrast_first
                or self.intercalate_samples > 0
            ):
                self.shuffle = False
                training_set = self.change_sampling_order(training_set)
                test_set = self.change_sampling_order(test_set)

            worker_fn = (
                None
                if self.seed == -1
                else lambda id: np.random.seed(self.shuffle_seed % 2 ** 32)
            )

            g = None if self.seed == -1 else torch.Generator()
            if g != None:
                g.manual_seed(self.shuffle_seed)

            train_dataloader = DataLoader(
                dataset=InstanceDataset(
                    training_set, self.domain_max_value, self.output_layer
                ),
                batch_size=self.batch_size,
                shuffle=self.shuffle,
                num_workers=self.data_num_workers,
                worker_init_fn=worker_fn,
                generator=g,
            )

            test_dataloader = DataLoader(
                dataset=InstanceDataset(
                    test_set, self.domain_max_value, self.output_layer
                ),
                batch_size=self.batch_size,
                shuffle=self.shuffle,
                num_workers=self.data_num_workers,
                worker_init_fn=worker_fn,
                generator=g,
            )

            kfolds.append((train_dataloader, test_dataloader))

            # for i, (inputs, targets) in enumerate(train_dataloader):
            #    print(inputs, targets)

        return kfolds

    def get_fold(self, idx: int) -> tuple:
        """
        Returns a fold as tuple(train dataloader, test dataloader).
        Counting from 0.
        """
        return self.kfolds[idx]

    def change_sampling_order(self, samples: list) -> list:
        """
        Returns state-value pairs with a different order for samples:
        - `contrast_first`: contrasting samples appear first.
        - `standard_first`: non-contrasting samples appear first.
        - `intercalate_samples`: contrasting and non-contrasting samples appear intercalated.
        """
        standard_samples = []
        contrast_samples = []
        interc_n = self.intercalate_samples

        for sv in samples:
            if sv[1] == self.domain_max_value:
                contrast_samples.append(sv)
            else:
                standard_samples.append(sv)

        if self.standard_first or self.contrast_first:
            return (
                standard_samples + contrast_samples
                if self.standard_first
                else contrast_samples + standard_samples
            )
        else:
            min_len = min(len(standard_samples), len(contrast_samples))
            new_state_value_pairs = []
            for i in range(0, min_len, interc_n):
                new_state_value_pairs += (
                    standard_samples[i : i + interc_n]
                    + contrast_samples[i : i + interc_n]
                )
            if not self.cut_non_intercalated_samples:
                if min_len == len(standard_samples):
                    new_state_value_pairs += contrast_samples[i + interc_n :]
                else:
                    new_state_value_pairs += standard_samples[i + interc_n :]

            return new_state_value_pairs


def seed_worker(worker_id: int):
    """
    Sets the seed of each worker.
    See: https://pytorch.org/docs/stable/notes/randomness.html
    """
    worker_seed = torch.initial_seed() % 2 ** 32
    np.random.seed(worker_seed)
    random.seed(worker_seed)

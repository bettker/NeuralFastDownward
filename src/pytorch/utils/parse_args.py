import argparse
from pathlib import Path

from src.pytorch.utils.default_args import (
    DEFAULT_OUTPUT_LAYER,
    DEFAULT_NUM_FOLDS,
    DEFAULT_HIDDEN_LAYERS,
    DEFAULT_HIDDEN_UNITS,
    DEFAULT_BATCH_SIZE,
    DEFAULT_ACTIVATION,
    DEFAULT_WEIGHT_DECAY,
    DEFAULT_DROPOUT_RATE,
    DEFAULT_SHUFFLE,
    DEFAULT_LEARNING_RATE,
    DEFAULT_MAX_EPOCHS,
    DEFAULT_MAX_TRAINING_TIME,
    DEFAULT_SEARCH_ALGORITHM,
    DEFAULT_UNARY_THRESHOLD,
    DEFAULT_MAX_SEARCH_TIME,
    DEFAULT_MAX_SEARCH_MEMORY,
    DEFAULT_OUTPUT_FOLDER,
    DEFAULT_RANDOM_SEED,
    DEFAULT_TEST_MODEL,
)

def get_train_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        'samples',
        type=argparse.FileType('r'),
        help="Path to file with samples to be used in training."
    )
    parser.add_argument(
        "-o",
        "--output-layer",
        choices=["regression", "prefix", "one-hot"],
        default=DEFAULT_OUTPUT_LAYER,
        help="Network output layer type. (default: %(default)s)"
    )
    parser.add_argument(
        "-f",
        "--num-folds",
        type=int,
        default=DEFAULT_NUM_FOLDS,
        help="Number of folds to split training data. (default: %(default)s)"
    )
    parser.add_argument(
        "-hl",
        "--hidden-layers",
        type=int,
        default=DEFAULT_HIDDEN_LAYERS,
        help="Number of hidden layers of the network. (default: %(default)s)"
    )
    parser.add_argument(
        "-hu",
        "--hidden-units",
        type=int,
        nargs="+",
        default=DEFAULT_HIDDEN_UNITS,
        help="Number of units in each hidden layers. For all hidden layers with same size enter \
              only one value; for different size between layers enter \"hidden_layers\" values. \
              (default: scalable according to the input and output units.)"
    )
    parser.add_argument(
        "-b",
        "--batch-size",
        type=int,
        default=DEFAULT_BATCH_SIZE,
        help="Number of samples used in each step of training. (default: %(default)s)"
    )
    parser.add_argument(
        "-lr",
        "--learning-rate",
        type=float,
        default=DEFAULT_LEARNING_RATE,
        help="Network learning rate. (default: %(default)s)"
    )
    parser.add_argument(
        "-e",
        "--max-epochs",
        type=int,
        default=DEFAULT_MAX_EPOCHS,
        help="Maximum number of epochs to train each fold. (default: %(default)s)"
    )
    parser.add_argument(
        "-t",
        "--max-training-time",
        type=int,
        default=DEFAULT_MAX_TRAINING_TIME,
        help="Maximum network training time (all folds). (default: %(default)ss)"
    )
    parser.add_argument(
        "-a",
        "--activation",
        choices=["sigmoid", "relu"],
        default=DEFAULT_ACTIVATION,
        help="Activation function for hidden layers. (default: %(default)s)"
    )
    parser.add_argument(
        "-w",
        "--weight-decay",
        "--regularization",
        type=float,
        default=DEFAULT_WEIGHT_DECAY,
        help="Weight decay (L2 regularization) to use in network training. (default: %(default)s)"
    )
    parser.add_argument(
        "-d",
        "--dropout-rate",
        type=float,
        default=DEFAULT_DROPOUT_RATE,
        help="Dropout rate for hidden layers. (default: %(default)s)"
    )
    parser.add_argument(
        "-sh",
        "--shuffle",
        type=int,
        default=DEFAULT_SHUFFLE,
        help="Shuffle the training data. (default: %(default)s)"
    )
    parser.add_argument(
        "-of",
        "--output-folder",
        type=Path,
        default=DEFAULT_OUTPUT_FOLDER,
        help="Path where the training folder will be saved. (default: %(default)s)"
    )
    parser.add_argument(
        "-s",
        "--seed",
        type=int,
        default=DEFAULT_RANDOM_SEED,
        help="Random seed to be used. Defaults to no seed. (default: random)"
    )

    return parser.parse_args()

def get_test_args():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "train_folder",
        type=Path,
        help="Path to training folder with trained model."
    )
    parser.add_argument(
        "domain_pddl",
        type=str,
        help="Path to domain PDDL."
    )
    parser.add_argument(
        "problem_pddls",
        type=str,
        nargs="+",
        help="Path to problems PDDL."
    )
    parser.add_argument(
        "-a",
        "--search-algorithm",
        choices=["astar", "eager_greedy", "blind"],
        default=DEFAULT_SEARCH_ALGORITHM,
        help="Algorithm to be used in the search. (default: %(default)s)"
    )
    parser.add_argument(
        "-u",
        "--unary-threshold",
        type=float,
        default=DEFAULT_UNARY_THRESHOLD,
        help="Unary threshold to be used if output layer is unary prefix. (default: %(default)s)"
    )
    parser.add_argument(
        "-t",
        "--max-search-time",
        type=int,
        default=DEFAULT_MAX_SEARCH_TIME,
        help="Time limit for searching each problem. (default: %(default)ss)"
    )
    parser.add_argument(
        "-m",
        "--max-search-memory",
        type=int,
        default=DEFAULT_MAX_SEARCH_MEMORY,
        help="Memory limit for searching each problem. (default: %(default)sMB)"
    )
    parser.add_argument(
        "-pt",
        "--test-model",
        choices=["all", "best"],
        default=DEFAULT_TEST_MODEL,
        help="Model(s) used for testing. (default: %(default)s)"
    )
    return parser.parse_args()

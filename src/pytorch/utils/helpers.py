"""
Simple auxiliary functions.
"""

import logging
import glob
import os
from random import Random
from json import dump, load
from datetime import datetime, timezone
from statistics import median, mean
from subprocess import check_output
from src.pytorch.utils.default_args import (
    DEFAULT_AUTO_TASKS_FOLDER,
    DEFAULT_AUTO_TASKS_N,
    DEFAULT_AUTO_TASKS_SEED,
    DEFAULT_MAX_EPOCHS,
    DEFAULT_MAX_EXPANSIONS,
    DEFAULT_AUTO_TASKS_N,
    DEFAULT_AUTO_TASKS_FOLDER,
    DEFAULT_AUTO_TASKS_SEED,
)
from argparse import Namespace

_log = logging.getLogger(__name__)


def to_prefix(n: int, max_value: int) -> [int]:
    """
    Convert value `n` to prefix encoding.
    """
    max_value += 1
    return [1 if i < n else 0 for i in range(max_value)]


def to_onehot(n: int, max_value: int) -> [int]:
    """
    Convert value `n` to onehot encoding.
    """
    max_value += 1
    return [1 if i == n else 0 for i in range(max_value)]


def prefix_to_h(prefix: [float], threshold: float = 0.01) -> int:
    """
    Convert prefix encoding to a value, respecting the given threshold value.
    """
    last_h = len(prefix) - 1
    for i in range(len(prefix)):
        if prefix[i] < threshold:
            last_h = i - 1
            break
    return last_h


def get_datetime() -> str:
    return datetime.now(timezone.utc).strftime("%d %B %Y %H:%M:%S UTC")


def get_fixed_max_epochs(args, model="resnet_ferber21", time="1800") -> int:
    """
    If argument `-e` equals -1, returns a default number of training epochs
    for the given problem. This is used to avoid time-based training.
    """
    with open(f"reference/{model}.csv", "r") as f:
        lines = [l.replace("\n", "").split(",") for l in f.readlines()]
        header = lines[0]
        for line in lines[1:]:
            if (
                args.domain == line[header.index("domain")]
                and args.problem == line[header.index("problem")]
            ):
                return int(line[header.index(f"epochs_{time}s")])
    _log.warning(
        f"Fixed number of epochs not found. "
        f"Setting to default value ({DEFAULT_MAX_EPOCHS})."
    )
    return DEFAULT_MAX_EPOCHS


def get_fixed_max_expansions(
    args: Namespace, model="resnet_ferber21", time="600"
) -> int:
    """
    Gets reference values for max expansions until stop seeking for a solution
    when trying to solve a problem.
    """
    with open(f"reference/{model}.csv", "r") as f:
        lines = [l.replace("\n", "").split(",") for l in f.readlines()]
        header = lines[0]
        for line in lines[1:]:
            if (
                args.domain == line[header.index("domain")]
                and args.problem == line[header.index("problem")]
            ):
                return int(line[header.index(f"expansions_{time}s")])
    _log.warning(
        f"Fixed maximum expansions not found. "
        f"Setting to default value ({DEFAULT_MAX_EXPANSIONS})."
    )
    return DEFAULT_MAX_EXPANSIONS


def save_git_diff(dirname: str):
    """
    Saves the current git diff to help verifying tests.
    """
    filename = f"{dirname}/git.diff"
    with open(filename, "w") as f:
        f.write(check_output(["git", "diff"]).decode("ascii").strip())
        # _log.info(f"Git diff has been saved in {filename}")


def get_git_commit() -> str:
    return check_output(["git", "rev-parse", "HEAD"]).decode("ascii").strip()


def get_hostname() -> str:
    return check_output(["cat", "/proc/sys/kernel/hostname"]).decode("ascii").strip()


def create_train_directory(args: Namespace, config_in_foldername: bool = False) -> str:
    """
    Creates training directory according to current configuration.
    """
    sep = "."
    dirname = f"{args.output_folder}/nfd_train{sep}{args.samples.split('/')[-1]}"
    if args.seed != -1:
        dirname += f"{sep}ns{args.seed}"
    if config_in_foldername:
        dirname += f"{sep}{args.output_layer}_{args.activation}_hid{args.hidden_layers}"
        if args.weight_decay > 0:
            dirname += f"_w{args.weight_decay}"
        if args.dropout_rate > 0:
            dirname += f"_d{args.dropout_rate}"
    if os.path.exists(dirname):
        i = 2
        while os.path.exists(f"{dirname}{sep}{i}"):
            i += 1
        dirname = dirname + f"{sep}{i}"
    os.makedirs(dirname)
    os.makedirs(f"{dirname}/models")
    if args.save_git_diff:
        save_git_diff(dirname)
    return dirname


def create_test_directory(args):
    """
    Creates testing directory according to current configuration.
    """
    sep = "."
    tests_folder = args.train_folder / "tests"
    if not os.path.exists(tests_folder):
        os.makedirs(tests_folder)
    dirname = f"{tests_folder}/nfd_test"
    if os.path.exists(dirname):
        i = 2
        while os.path.exists(f"{dirname}{sep}{i}"):
            i += 1
        dirname = dirname + f"{sep}{i}"
    os.makedirs(dirname)
    if args.save_git_diff:
        save_git_diff(dirname)
    return dirname


def save_json(filename: str, data: list):
    with open(filename, "w") as f:
        dump(data, f, indent=4)


def logging_train_config(
    args: Namespace, dirname: str, cmd_line: str, json: bool = True
):
    """
    Saves the full training configuration parameters as a JSON file.
    """
    args_dic = {
        "hostname": get_hostname(),
        "date": get_datetime(),
        "commit": get_git_commit(),
        "command_line": cmd_line,
        "domain": args.domain,
        "problem": args.problem,
        "samples": args.samples,
        "model": args.model,
        "patience": args.patience,
        "output_layer": args.output_layer,
        "linear_output": args.linear_output,
        "num_folds": args.num_folds,
        "hidden_layers": args.hidden_layers,
        "hidden_units": args.hidden_units
        if len(args.hidden_units) > 1
        else (args.hidden_units[0] if len(args.hidden_units) == 1 else "scalable"),
        "batch_size": args.batch_size,
        "learning_rate": args.learning_rate,
        "max_epochs": args.max_epochs
        if args.max_epochs != DEFAULT_MAX_EPOCHS
        else "inf",
        "max_training_time": f"{args.max_training_time}s",
        "activation": args.activation,
        "weight_decay": args.weight_decay,
        "dropout_rate": args.dropout_rate,
        "shuffle": args.shuffle,
        "shuffle_seed": args.shuffle_seed,
        "remove_goals": args.remove_goals,
        "standard_first": args.standard_first,
        "contrast_first": args.contrast_first,
        "intercalate_samples": args.intercalate_samples,
        "cut_non_intercalated_samples": args.cut_non_intercalated_samples,
        "dataloader_num_workers": args.data_num_workers,
        "bias": args.bias,
        "bias_output": args.bias_output,
        "normalize_output": args.normalize_output,
        "seed_increment_when_born_dead": args.seed_increment_when_born_dead,
        "weights_method": args.weights_method,
        "weights_seed": args.weights_seed if args.weights_seed != -1 else "random",
        "seed": args.seed if args.seed != -1 else "random",
        "scatter_plot": args.scatter_plot if args.scatter_plot != -1 else None,
        "plot_n_epochs": args.plot_n_epochs if args.plot_n_epochs != -1 else None,
        "compare_csv_dir": args.compare_csv_dir if args.compare_csv_dir != "" else None,
        "hstar_csv_dir": args.hstar_csv_dir if args.hstar_csv_dir != "" else None,
        "num_threads": args.num_threads if args.num_threads != -1 else None,
        "output_folder": str(args.output_folder),
    }

    _log.info(f"Configuration")
    for a in args_dic:
        _log.info(f" | {a}: {args_dic[a]}")

    if json:
        save_json(f"{dirname}/train_args.json", args_dic)


def logging_test_config(
    args: Namespace, dirname: str, cmd_line: str, save_file: bool = True
):
    """
    Saves the full test configuration parameters as a JSON file.
    """
    args_dic = {
        "hostname": get_hostname(),
        "date": get_datetime(),
        "commit": get_git_commit(),
        "command": cmd_line,
        "train_folder": str(args.train_folder),
        "domain_pddl": args.domain_pddl,
        "problems_pddl": args.problem_pddls,
        "search_algorithm": args.search_algorithm,
        "heuristic": args.heuristic,
        "heuritic_multiplier": args.heuristic_multiplier,
        "max_search_time": f"{args.max_search_time}s",
        "max_search_memory": f"{args.max_search_memory} MB",
        "max_expansions": args.max_expansions,
        "unary_threshold": args.unary_threshold,
        "test_model": args.test_model,
        "facts_file": args.facts_file if args.facts_file != "" else None,
        "defaults_file": args.defaults_file if args.defaults_file != "" else None,
        "train_folder_compare": args.train_folder_compare
        if args.train_folder_compare != ""
        else None,
    }
    if args.heuristic == "nn":
        args_dic["test_model"] = args.test_model
    if len(args.problem_pddls) == 0 or (
        args.auto_tasks_folder in args.problem_pddls[0]
        and len(args.problem_pddls) <= args.auto_tasks_n
    ):
        args_dic["auto_tasks_n"] = args.auto_tasks_n
        args_dic["auto_tasks_folder"] = args.auto_tasks_folder
        args_dic["auto_tasks_seed"] = args.auto_tasks_seed

    _log.info(f"Configuration")
    for a in args_dic:
        _log.info(f" | {a}: {args_dic[a]}")

    if save_file:
        save_json(f"{dirname}/test_args.json", args_dic)


def add_train_arg(dirname: str, key, value):
    """
    Adds/updates a key-value pair from the `train_args.json` file.
    """
    with open(f"{dirname}/train_args.json", "r") as f:
        data = load(f)
    data[key] = value
    with open(f"{dirname}/train_args.json", "w") as f:
        dump(data, f, indent=4)


def logging_test_statistics(
    args: Namespace,
    dirname: str,
    model: str,
    output: dict,
    decimal_places: int = 4,
    save_file: bool = True,
):
    """
    Saves the test results to a file.
    """
    test_results_filename = f"{dirname}/test_results.json"
    if os.path.exists(test_results_filename):
        with open(test_results_filename) as f:
            results = load(f)
    else:
        results = {
            "configuration": {
                "search_algorithm": args.search_algorithm,
                "heuristic": args.heuristic,
                "max_search_time": f"{args.max_search_time}s",
                "max_search_memory": f"{args.max_search_memory} MB",
                "max_expansions": str(args.max_expansions),
            },
            "results": {},
            "statistics": {},
        }

    results["results"][model] = output
    results["statistics"][model] = {}
    rlist = {}
    if len(args.problem_pddls) > 0:
        stats = []
        for problem in results["results"][model]:
            for s in results["results"][model][problem]:
                if s not in stats:
                    stats.append(s)
        for x in stats:
            rlist[x] = [
                results["results"][model][p][x]
                for p in results["results"][model]
                if x in results["results"][model][p]
            ]
            if x == "search_state":
                rlist[x] = [
                    results["results"][model][p][x] for p in results["results"][model]
                ]
                results["statistics"][model]["plans_found"] = rlist[x].count("success")
                results["statistics"][model]["total_problems"] = len(rlist[x])
                results["statistics"][model]["coverage"] = round(
                    results["statistics"][model]["plans_found"]
                    / results["statistics"][model]["total_problems"],
                    decimal_places,
                )
            elif x == "plan_length":
                for i in range(len(rlist[x])):
                    rlist[x][i] = int(rlist[x][i])
                if len(rlist[x]) > 1:
                    results["statistics"][model]["max_plan_length"] = max(rlist[x])
                    results["statistics"][model]["min_plan_length"] = min(rlist[x])
                results["statistics"][model]["avg_plan_length"] = round(
                    mean(rlist[x]), decimal_places
                )
                if len(rlist[x]) > 1:
                    results["statistics"][model]["mdn_plan_length"] = round(
                        median(rlist[x]), decimal_places
                    )
            elif x == "initial_h":
                for i in range(len(rlist[x])):
                    rlist[x][i] = int(rlist[x][i])
                results["statistics"][model]["avg_initial_h"] = round(
                    mean(rlist[x]), decimal_places
                )
                if len(rlist[x]) > 1:
                    results["statistics"][model]["mdn_initial_h"] = round(
                        median(rlist[x]), decimal_places
                    )
            elif x == "expansion_rate":
                for i in range(len(rlist[x])):
                    rlist[x][i] = float(rlist[x][i])
                results["statistics"][model]["avg_expansion_rate"] = round(
                    mean(rlist[x]), decimal_places
                )
                if len(rlist[x]) > 1:
                    results["statistics"][model]["mdn_expansion_rate"] = round(
                        median(rlist[x]), decimal_places
                    )
            elif x == "total_time":
                for i in range(len(rlist[x])):
                    rlist[x][i] = float(rlist[x][i])
                results["statistics"][model]["total_accumulated_time"] = round(
                    sum(rlist[x]), decimal_places
                )
            elif x == "search_time":
                for i in range(len(rlist[x])):
                    rlist[x][i] = float(rlist[x][i])
                results["statistics"][model]["avg_search_time"] = round(
                    mean(rlist[x]), decimal_places
                )
                if len(rlist[x]) > 1:
                    results["statistics"][model]["mdn_search_time"] = round(
                        median(rlist[x]), decimal_places
                    )
            else:
                for i in range(len(rlist[x])):
                    rlist[x][i] = int(rlist[x][i])
                results["statistics"][model][f"avg_{x}"] = round(
                    mean(rlist[x]), decimal_places
                )
                if len(rlist[x]) > 1:
                    results["statistics"][model][f"mdn_{x}"] = round(
                        median(rlist[x]), decimal_places
                    )

    _log.info(f"Training statistics for model {model}")
    for x in results["statistics"][model]:
        _log.info(f" | {x}: {results['statistics'][model][x]}")

    if save_file:
        save_json(test_results_filename, results)


def remove_temporary_files(directory: str):
    """
    Removes `output.sas` file.
    """
    output_sas = f"{directory}/output.sas"
    if os.path.exists(output_sas):
        os.remove(output_sas)


def save_y_pred_csv(data: dict, csv_filename: str):
    """
    Saves the {state: (value, predicted_value)} set to a CSV file.
    """
    with open(csv_filename, "w") as f:
        f.write("state,y,pred\n")
        for key in data.keys():
            f.write("%s,%s,%s\n" % (key, data[key][0], data[key][1]))


def remove_csv_except_best(directory: str, fold_idx: int):
    """
    Removes the recorded CSVs of each fold except the best one (less error).
    """
    csv_files = glob.glob(directory + "/*.csv")
    for f in csv_files:
        f_split = f.split("_")
        idx = int(f_split[-1].split(".")[0])
        if idx != fold_idx:
            os.remove(f)


def get_problem_by_sample_filename(sample_filename: str) -> str:
    return sample_filename.split("/")[-1].split("_")[1:3]


def get_test_tasks_from_problem(
    train_folder: str,
    tasks_folder: str = DEFAULT_AUTO_TASKS_FOLDER,
    n: int = DEFAULT_AUTO_TASKS_N,
    shuffle_seed: int = DEFAULT_AUTO_TASKS_SEED,
) -> [str]:
    """
    From the given training training problem, automatically return `n` random test instances
    from `tasks_folder`.
    """
    with open(
        f"{train_folder}/train_args.json",
    ) as f:
        data = load(f)

    domain = data["domain"]
    problem = data["problem"]
    possible_parent_dirs = ["", domain, f"{domain}/moderate", f"{domain}/hard"]
    dir = None

    for parent_dir in possible_parent_dirs:
        candidate_dir = f"{tasks_folder}/{parent_dir}/{problem}"
        if os.path.isdir(candidate_dir):
            dir = candidate_dir

    if dir == None:
        _log.error(
            f"No tasks were automatically found from {tasks_folder}. "
            "Enter tasks manually from the command line or enter the path to the tasks folder (-atf)."
        )
        return []

    pddls = [
        f"{dir}/{f}"
        for f in os.listdir(dir)
        if f[-5:] == ".pddl" and f != "domain.pddl"
    ]

    if shuffle_seed != -1:
        Random(shuffle_seed).shuffle(pddls)

    if len(pddls) < n:
        _log.warning(f"Not found {n} tasks in {dir}. {len(pddls)} were selected.")
        return pddls

    return pddls[:n]


def get_defaults_and_facts_files(samples_dir: str, sample_file: str) -> (str, str):
    """
    From the given samples directory and sample file, return its `facts` and `defaults` files.
    """
    ffiles = glob.glob(samples_dir + f"{sample_file}_facts.txt")
    dfiles = glob.glob(samples_dir + f"{sample_file}_defaults.txt")
    if len(ffiles) > 0 and len(dfiles) > 0:
        return ffiles[0], dfiles[0]
    else:
        _log.warning("No `default` and `facts` files found for the given sample.")
        return "", ""


def get_models_from_train_folder(train_folder: str, test_model: str) -> [str]:
    """
    Returns the required trained network models to be used for testing, according to the
    `test_model` chosen.
    """
    models = []

    if train_folder == "":
        return models

    models_folder = f"{train_folder}/models"

    if test_model == "best":
        best_fold_path = f"{models_folder}/traced_best_val_loss.pt"
        if os.path.exists(best_fold_path):
            models.append(best_fold_path)
        else:
            _log.error(f"Best val loss model does not exists!")
    elif test_model == "all":
        i = 0
        while os.path.exists(f"{models_folder}/traced_{i}.pt"):
            models.append(f"{models_folder}/traced_{i}.pt")
            i += 1
    elif test_model == "epochs":
        i = 0
        while os.path.exists(f"{models_folder}/traced_0-epoch-{i}.pt"):
            models.append(f"{models_folder}/traced_0-epoch-{i}.pt")
            i += 1

    return models


def get_samples_folder_from_train_folder(train_folder: str) -> [str]:
    try:
        with open(f"{train_folder}/train_args.json", "r") as f:
            l = load(f)["samples"].split("/")
            return l[-2] if len(l) > 1 else l[0]
    except:
        return "samples"  # default

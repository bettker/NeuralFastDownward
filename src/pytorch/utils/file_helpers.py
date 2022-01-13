"""
Management of file creation and deletion.
"""

import os
import glob
from argparse import Namespace
from json import dump, load
from subprocess import check_output


def save_json(filename: str, data: list):
    """
    Saves a file with the given filename and data as a JSON file.
    """
    with open(filename, "w") as f:
        dump(data, f, indent=4)


def save_git_diff(dirname: str):
    """
    Saves the current git diff to help verifying tests.
    """
    filename = f"{dirname}/git.diff"
    with open(filename, "w") as f:
        f.write(check_output(["git", "diff"]).decode("ascii").strip())


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

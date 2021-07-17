#!/usr/bin/env python3

import sys
import numpy as np
import torch
import torch.nn as nn
import torch.optim as optim
from torch.utils.data import DataLoader

from model import HNN
from train_workflow import TrainWorkflow
from training_data import InstanceDataset, setup_dataloaders
from fast_downward_api import solve_instances_with_fd

"""
Use as:
$ ./train <training_domain>
"""

domain = sys.argv[1]

domain_max_value = 1

# TODO other domains
if domain == "blocksworld":
    domain_max_value = 327

# Use CPU instead of GPU.
device = torch.device("cpu")

dataset = InstanceDataset("sas-plans/sas_plan_test_npuzzle", domain_max_value)


train_dataloader, val_dataloader = setup_dataloaders(dataset=dataset,
                                                     train_split=0.8,
                                                     batch_size=10,
                                                     shuffle=True)

print(dataset.x_shape()[1], dataset.y_shape()[1])

model = HNN(input_size=dataset.x_shape()[1],
            hidden_units=dataset.x_shape()[1],
            output_size=dataset.y_shape()[1]).to(device)

print(model)

train_wf_blind = TrainWorkflow(model=model,
                               train_dataloader=train_dataloader,
                               val_dataloader=val_dataloader,
                               max_num_epochs=1000,
                               optimizer=optim.Adam(model.parameters(), lr=0.001))

train_wf_blind.run(validation=True)

blind_model_fname = "traced.pt"
train_wf_blind.save_traced_model(blind_model_fname)

# TODO remove solved instances from the dataset and make new training workflow
"""
# (instance_idx, exit_code)
instance_list = solve_instances_with_fd(blind_model_fname, "instances/npuzzle-domain.pddl",
                                        ["instances/n-puzzle-3x3-s44.pddl"], blind=True)

print(instance_list)
"""

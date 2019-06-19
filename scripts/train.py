import json
import os

prefix = '/opt/ml/'
channel_name = 'training'

output_path = os.path.join(prefix, 'output')
hyperparams_path = os.path.join(prefix, 'input/config/hyperparameters.json')
input_path = os.path.join(prefix, 'input/data', channel_name)

if not os.path.exists(output_path):
    os.makedirs(output_path)

params = {}
# Parse hyperparameters.json
if os.path.isfile(hyperparams_path):
    with open(hyperparams_path) as f:
        params = json.load(f)


def train():
    """
    All the training related code goes in here
    """


if __name__ == "__main__":
    train()

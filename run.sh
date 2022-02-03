# Copyright 2022 The Google Research Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

# Main script for hyperparameter optimisation

EXPT=favorita
OUTPUT_FOLDER=~/tft_outputs  # Path to store data & experiment outputs
USE_GPU=no
TESTING_MODE=yes  # If yes, trains a small model with little data to test script

# Step 1: Setup environment.

echo
echo Setting up virtual environment...
echo

#set -e

conda create --name env
conda activate env
pip install --pre "tensorflow==1.15.0"
pip install -r requirements.txt

# Step 2: Downloads data if not present.
echo
python -m script_download_data $EXPT $OUTPUT_FOLDER

# Step 3: Train & Test
echo
python -m script_train_fixed_params $EXPT $OUTPUT_FOLDER $USE_GPU $TEST_MODE


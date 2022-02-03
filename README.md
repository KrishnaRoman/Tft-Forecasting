# Tft-Forecasting

Authors: Krishna Román, Andy Cumbicus, Carlos Macancela, Christian Calle, Fausto Narea

Paper link: https://arxiv.org/pdf/1912.09363.pdf

## Code Organisation
This repository contains the source code for the Temporal Fusion Transformer, along with the training and evaluation routines for the experiments described in the paper.

* **run.sh**: Simple shell script to ensure correct environmental setup.
* **script\_download\_data.py**: Downloads data for the main experiment and processes them into csv files ready for training/evaluation.
* **script\_train\_fixed\_params.py**: Calibrates the TFT using a predefined set of hyperparameters, and evaluates for a given experiment.

### Step 1: Convert downloaded data for default experiments
To do that run the following script:
```bash
python3 -m script_download_data favorita $OUTPUT_FOLDER
```
where ``$OUTPUT_FOLDER`` denotes the root folder in which experiment outputs are saved.

### Step 2: Train and evaluate network
To train the network with the optimal default parameters, run:
```bash
python3 -m script_train_fixed_params favorita $OUTPUT_FOLDER $USE_GPU 
```
where ``$OUTPUT_FOLDER`` is as above, ``$GPU`` denotes whether to run with GPU support (options are {``'yes'`` or``'no'``}).


#!/bin/sh

# Load modules 
module unload cuda
module unload cudann
module load cuda/9.0
module load cudnn/v7.0.5-prod-cuda-9.0

# Setup virtual env
virtualenv venv
source ./venv/bin/activate

pip install -U pip
pip install -U setuptools
pip install tensorflow-gpu
pip install keras
pip install pandas
pip install matplotlib

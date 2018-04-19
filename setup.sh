#!/bin/sh

# Load modules 
module unload cuda
module unload cudann
module load python/2.7.3
module load cuda/9.0
module load cudnn/v7.0.5-prod-cuda-9.0

# Setup virtual env
virtualenv venv
source ./venv/bin/activate

pip install -U pip
pip install numpy==1.14.2
pip install --upgrade setuptools==39.0.1
pip install matplotlib==2.2.2
pip install pandas==0.22.0
pip install --upgrade https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.7.0-cp27-none-linux_x86_64.whl
pip install keras==2.1.5
#!/bin/sh
### General options
### –- specify queue: gpuv100, gputitanxpascal, gpuk40, gpum2050 --
#BSUB -q gpuv100
### -- set the job Name --
#BSUB -J job_name
### -- ask for number of cores (default: 1) --
#BSUB -n 1
### -- Select the resources: 1 gpu in exclusive process mode --
#BSUB -gpu "num=1:mode=exclusive_process"
### -- set walltime limit: hh:mm --  maximum 24 hours for GPU-queues right now
#BSUB -W 01:00
### -- request 5GB of memory
#BSUB -R "rusage[mem=5GB]"
### -- set the email address --
# please uncomment the following line and put in your e-mail address,
# if you want to receive e-mail notifications on a non-default address
##BSUB -u your_email_address
### -- send notification at start --
#BSUB -B
### -- send notification at completion--
#BSUB -N
### -- Specify the output and error file. %J is the job-id --
### -- -o and -e mean append, -oo and -eo mean overwrite --
#BSUB -o gpu-%J.out
#BSUB -e gpu_%J.err
# -- end of LSF options --

# Exits if any errors occur at any point (non-zero exit code)
set -e

# Load modules 
module unload cuda
module unload cudann
module load cuda/9.0
module load cudnn/v7.0.5-prod-cuda-9.0

# Load virtual Python environment
source venv/bin/activate


##################################################################
# Execute your own code by replacing the sanity check code below #
##################################################################
# Print available GPU devices with Tensorflow
python -c "from tensorflow.python.client import device_lib; print device_lib.list_local_devices();"
# Verify installed Tensorflow and Keras versions
python -c "import tensorflow as tf; print 'Tensorflow version', tf.__version__;"
python -c "import keras; print 'Keras version', keras.__version__;"
# DTU-HPC-Environment-Setup-Scripts

This repository collects useful scripts for executing code on the high-performance computing clusters of the Technical University of Denmark (DTU). 
Since the available modules are dependent on the login node, I have to add the disclaimer that I personally only used and tested them on the second login node: login2.hpc.dtu.dk. At the time of writing, the default system Python version (2.7.5) was used.

## Setting your Python environment with Tensorflow and Keras

First, connect with the DTU HPC servers using ssh. As stated, I recommend the second login node. After logging in, navigate to your desired project directory and execute the following to set up your Python environment (including Tensorflow and Keras, using CUDA 9.0).
```
linuxsh
wget https://github.com/Algebrazebra/DTU-HPC-Environment-Setup-Scripts/raw/master/setup.sh
sh setup.sh
rm -f setup.sh
exit
```

## Submitting to the Job Queue
Under construction.

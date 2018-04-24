# DTU-HPC-Scripts

This repository collects useful scripts for executing code on the high-performance computing clusters of the Technical University of Denmark (DTU). 
Since the available modules are dependent on the login node, I have to add the disclaimer that I personally only used and tested them on the second login node: login2.hpc.dtu.dk. At the time of writing, the default system Python (version 2.7.5) was used.

## Setting your Python environment with Tensorflow and Keras

First, connect with the DTU HPC servers using ssh. As stated, I recommend the second login node. After logging in, navigate to your desired project directory and execute the following to set up your Python environment including Tensorflow and Keras based on the CUDA 9.0 install.
```
linuxsh
wget https://github.com/Algebrazebra/DTU-HPC-Scripts/raw/master/setup.sh
sh setup.sh
rm -f setup.sh
exit
```

## Submitting to the Job Queue
Jobs are submitted using a submission shell script via
```
bsub < submit.sh
```
The shell script contains the instructions for the load handler as well as necessary commands to execute your code. A sample job script is provided with the submit.sh file in this repo. Simply alter the file to your needs and liking. For more information on the job script please refer to the official documentation given here: [Batch Jobs](https://www.hpc.dtu.dk/?page_id=234).

Upon successful submission you can check the status of your current submissions with
```
bstat
```

## Useful Commands When Working with the HPC
Under construction
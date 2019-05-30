#!/bin/bash

# install tensorflow dependencies
sudo apt-get install python-numpy python-scipy python-pip python-wheel -y
sudo apt-get install python-enum32 python-mock python-h5py -y
# mlocate will be used to locate libraries needed by TF
sudo apt-get install mlocate -y
sudo updatedb

# TF 1.13 version requires keras libraries be present for the build
pip install -U --user pip six numpy wheel setuptools mock
pip install -U --user keras_applications==1.0.6 --no-deps
pip install -U --user keras_preprocessing==1.0.5 --no-deps

#!/bin/bash
# NVIDIA Jetson AGX Xavier
INSTALL_DIR=$PWD
cd $HOME
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
git checkout r1.14
patch -p1 < $INSTALL_DIR/tfr1.14.patch

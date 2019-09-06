#!/bin/bash
cd $HOME/tensorflow
bazel-bin/tensorflow/tools/pip_package/build_pip_package $HOME/tensorflow_pkg

#!/bin/bash
cd $HOME/tensorflow
bazel build --config=opt --config=nonccl //tensorflow/tools/pip_package:build_pip_package --verbose_failures --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=0"


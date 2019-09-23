#!/bin/bash

########################################
# bazel Dependencies
########################################
# Perform apt installs for bazel dependencies
sudo apt-get install build-essential openjdk-8-jdk python-dev zip unzip -y

########################################
# bazel Build
########################################
VERSION=0.24.1 # for TensorFlow r1.14.0
mkdir compile \
&& cd compile \
&& wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/${VERSION}/bazel-${VERSION}-dist.zip \
&& unzip bazel-${VERSION}-dist.zip -d bazel-${VERSION} \
&& cd bazel-${VERSION} \
&& ./compile.sh \
&& cp -f output/bazel /usr/local/bin/

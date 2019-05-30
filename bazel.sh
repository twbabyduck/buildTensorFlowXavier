########################################
# bazel Build
########################################
VERSION=0.19.2 # for Tensorflow r1.13
mkdir -p /compile \
&& cd /compile \
&& wget --no-check-certificate https://github.com/bazelbuild/bazel/releases/download/${VERSION}/bazel-${VERSION}-dist.zip \
&& unzip bazel-${VERSION}-dist.zip -d bazel-${VERSION} \
&& cd bazel-${VERSION} \
&& ./compile.sh \
&& cp -f output/bazel /usr/local/bin/

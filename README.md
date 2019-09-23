# buildTensorFlowXavier
September 06, 2019
Quack

Scripts to help build TensorFlow r1.14 for the NVIDIA Jetson AGX Xavier Developer Kit.

## Preparation

There is a convenience script for building a swap file. To build a 8GB swapfile on the eMMC in the home directory:

### Check your current version of gcc/g++

```bash
gcc -v
```

```bash
ls /usr/bin/gcc*
```

### Install gcc-5 and g++-5

```bash
sudo apt install gcc-5 g++-5
```

### Allocate Swap Space for target platform

```bash
./createSwapfile.sh -d ~/ -s 8
```

After TensorFlow has finished building, the swap file is no longer needed and may be removed.

### Bazel (0.24.1)

```bash
build_bazel.sh
```

## For Python 2.7

### TensorFlow (r1.14)

#### Step 1
```bash
./py27_tf14_dep.sh
```

#### Step 2
```bash
./cloneTF_Patch.sh
```

#### Step 3
Please check `log.txt` for details about setting up TensorFlow configs.
```bash
./configure
```

#### Step 4
The official TensorFlow packages are built with GCC 4 and use the older ABI. For GCC 5 and later, make your build compatible with the older ABI using: --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=0". ABI compatibility ensures that custom ops built against the official TensorFlow package continue to work with the GCC 5 built package.
```bash
./build_tf.sh
``` 

#### Step 5
```bash
./package_tf.sh
```

#### Step 6
```bash
pip install *.whl 
```

## Notes

TensorFlow C++ with ROS
shared library
```bash
bazel build --config=opt --config=nonccl //tensorflow:libtensorflow_cc.so --verbose_failures --cxxopt="-D_GLIBCXX_USE_CXX11_ABI=1"
```

# buildTensorFlowXavier
September 06, 2019
Quack

Scripts to help build TensorFlow r1.14 for the NVIDIA Jetson AGX Xavier Developer Kit.

## Preparation

There is a convenience script for building a swap file. To build a 8GB swapfile on the eMMC in the home directory:

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



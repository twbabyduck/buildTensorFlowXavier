# set environment variables
echo "export PATH=${PATH}:/usr/local/cuda/bin" >> ~/.bashrc
echo "export CUDA_HOME=${CUDA_HOME}:/usr/local/cuda:/usr/local/cuda" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda/lib64" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64" >> ~/.bashrc
source ~/.bashrc


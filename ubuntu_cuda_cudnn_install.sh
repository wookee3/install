# os, cuda 버전에 따라 아래 스크립트는 계속 변경되어야 하므로 업데이트 필요
# 귀찮을 경우 docker를 사용해라
# reference: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html

# ubuntu 20.04, cuda 11.6
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt-get update
sudo apt-get -y install cuda-11-6
sudo apt-get -y install nvidia-gds-11-6

# bashrc
echo "PATH=/usr/local/cuda-11.6/bin${PATH:+:${PATH}}\n" >> .bashrc
echo "LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}\n" >> .bashrc
# cudnn
sudo apt-get -y install zlib1g
OS=ubuntu2004
cudnn_version=8.4.1.50
cuda_version=cuda11.6

wget https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/cuda-${OS}.pin 

sudo mv cuda-${OS}.pin /etc/apt/preferences.d/cuda-repository-pin-600
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/3bf863cc.pub
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/ /"
sudo apt-get update
sudo apt-get install libcudnn8=${cudnn_version}-1+${cuda_version}
sudo apt-get install libcudnn8-dev=${cudnn_version}-1+${cuda_version}

# nvtop
sudo apt-get install -y cmake libncurses5-dev libncursesw5-dev git
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake .. -DNVIDIA_SUPPORT=ON -DAMDGPU_SUPPORT=ON
make

# Install globally on the system
sudo make install

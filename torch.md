# torch
  * install
```
git clone https://github.com/torch/distro.git ~/src/torch --recursive
cd ~/src/torch; bash install-deps;
./install.sh

source ~/.bashrc

luarocks install image
luarocks list

```

  * uninstall
```
rm -rf ~/src/torch
```

# pytorch - http://pytorch.org/
  * version 및 cuda, package manager에 따라 설치법을 홈페이지에 기술
  * src로 빌드 하려는 경우 다른 방법 참고
```
pip install http://download.pytorch.org/whl/cu80/torch-0.2.0.post3-cp27-cp27mu-manylinux1_x86_64.whl
pip install torchvision
```

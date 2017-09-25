# install gym
```
sudo apt-get install -y python-numpy python-dev cmake zlib1g-dev libjpeg-dev xvfb libav-tools xorg-dev python-opengl libboost-all-dev libsdl2-dev swig

git clone https://github.com/openai/gym.git
cd gym
sudo pip install -e '.[all]'
```

# install universe
* prerequest
  * docker

  ```
  pip install numpy
  sudo apt-get install golang libjpeg-turbo8-dev make
  sudo pip install pyOpenSSL --upgrade
  sudo apt-get install -y libffi-dev libssl-dev

  git clone https://github.com/openai/universe.git
  cd universe
  pip install -e .
  ```

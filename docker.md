# docker - cc version(https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)
* uninstall
```
sudo apt-get remove docker docker-engine docker.io

# docker ce를 지울 경우
sudo apt-get purge docker-ce
```

* install
  * docker ce를 다른 머신에서 사용한 경우 docker repository를 setup해서 사용해야됨
  * 해당 내용은 기술되어 있지 않으며, 필요한 경우 위 주소를 참고
```
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce

# verify install
sudo docker run hello-world
```

* post installabtion steps for Linux - https://docs.docker.com/engine/installation/linux/linux-postinstall/
  * create docker group and add user
```
sudo groupadd docker
sudo usermod -aG docker $USER

# verify install - after reconnect
docker run hello-world
```

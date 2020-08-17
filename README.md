# dockerubuntuvnc
Docker container with :
- xfce4
- x11vnc
- thunar
- bless
- ...some other tools

BUILD container :
#### Linux
```
sudo apt-get update
sudo apt-get install -y git
# sudo pacman -S --noconfirm yay pamac
# yay -S --noconfirm git
sudo rm -rf ~/dockerubuntuvnc
cd ~
git clone https://github.com/pagkly/dockerubuntuvnc
cd ./dockerubuntuvnc
sudo docker build -t dockerubuntuvnc .
```

#### Windows 10
```
cd $env:USERPROFILE
rmdir /S /Q dockerubuntuvnc
git clone https://github.com/pagkly/dockerubuntuvnc
cd dockerubuntuvnc
docker build -t dockerubuntuvnc .
```

RUN container as root with vnc @ 1024x768:
```
sudo docker run -it --user 0 --restart=always -d -p 5900 --privileged --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH --security-opt seccomp=unconfined dockerubuntuvnc sudo su -c "x11vnc -forever -create -scale 1024x768"
```

RUN vnc :
```
sudo apt-get install -y vncviewer
vncviewer :port
```

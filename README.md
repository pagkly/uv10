# uv10
Docker container with :
- xfce4
- x11vnc
- thunar
- bless
- ...some other tools

BUILD container :
```
git clone https://github.com/pagkly/uv10
cd ./uv10
sudo docker build -t uv10 .
```

RUN container as root with vnc @ 1024x768:
```
sudo docker run -it --user 0 --restart=always -d -p 5900 --privileged --cap-add SYS_ADMIN --cap-add DAC_READ_SEARCH --security-opt seccomp=unconfined uv10 sudo su -c "x11vnc -forever -create -scale 1024x768"
```

RUN vnc :
```
sudo apt-get install -y vncviewer
vncviewer :port
```

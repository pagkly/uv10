FROM ubuntu:18.04
#ARG ORIBGPIC=/usr/share/backgrounds/xfce/xfce-teal.jpg
#ENV ORIBGPIC=/usr/share/backgrounds/xfce/xfce-teal.jpg
MAINTAINER py
RUN export DEBIAN_FRONTEND=noninteractive && echo "ORIBGPIC=" && apt-get update && apt install -y sudo nano && apt-get install -y xterm perl curl wget bless gedit python3 python python-pip idle git imagemagick x11vnc xfce4 xvfb thunar zathura &&ln -fs /usr/share/zoneinfo/Australia/Melbourne /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata && echo "exec xfce4-session" | tee /root/.xinitrc && export ORIBGPIC=/usr/share/backgrounds/xfce/xfce-blue.jpg && echo  && sudo curl -o /root/black.jpg https://wallpapercave.com/wp/DTvUQor.jpg && sudo mv /usr/share/backgrounds/xfce/xfce-teal.jpg /usr/share/backgrounds/xfce/xfce-teal.jpgbk && sudo mv /root/black.jpg /usr/share/backgrounds/xfce/xfce-teal.jpg && pip install pyscreenshot

#!/bin/bash

# script to install some programs on Ubuntu 22.04
# author: sufigueroa87
# date: 2022-11-26

echo "UPDATE"
echo "******************************************"
echo "UPDATE"
echo "******************************************"
echo "UPDATE"
echo "******************************************"
# update
apt-get -y update


echo "UPGRADE"
echo "******************************************"
echo "UPGRADE"
echo "******************************************"
echo "UPGRADE"
echo "******************************************"
# upgrade
apt-get -y upgrade


echo "SNAPD, GIT, CURL, NET-TOOLS"
echo "******************************************"
echo "SNAPD, GIT, CURL, NET-TOOLS"
echo "******************************************"
echo "SNAPD, GIT, CURL, NET-TOOLS"
echo "******************************************"
# instalar snapd, git, curl, net-tools
apt install -y snapd git curl net-tools


echo "OBS"
echo "******************************************"
echo "OBS"
echo "******************************************"
echo "OBS"
echo "******************************************"
# instalar obs
snap install obs-studio





echo "DRIVER WIFI"
echo "******************************************"
echo "DRIVER WIFI"
echo "******************************************"
echo "DRIVER WIFI"
echo "******************************************"
# instalación driver usb wifi
if [ $(lsmod | grep -o 88x2bu | head -1 | wc -l) -eq 0 ]
then
  echo "No se encuentra el driver 88x2bu instalado, se procede a instalar."
  apt install -y build-essential dkms
  git clone https://github.com/morrownr/88x2bu-20210702.git
  cd 88x2bu-20210702/
  ./install-driver.sh
else
  echo "Ya se encuentra el driver 88x2bu instalado, así que NO se procede a realizar la instalación."
fi


echo "PostgreSQL"
echo "******************************************"
echo "PostgreSQL"
echo "******************************************"
echo "PostgreSQL"
echo "******************************************"
# PostgreSQL
apt-get install -y postgresql postgresql-contrib


echo "pgAdmin4"
echo "******************************************"
echo "pgAdmin4"
echo "******************************************"
echo "pgAdmin4"
echo "******************************************"
# pgAdmin4
if [ ! -f "/etc/apt/sources.list.d/pgadmin4.list" ]
then
  echo "No existe pgAdmin4, así que se procede a instalarlo."
  curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | apt-key add
  echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update
  apt install -y pgadmin4
else
  echo "Ya existe pgAdmin4, así que NO se procede a realizar la instalación."
fi


echo "Intellij Idea"
echo "******************************************"
echo "Intellij Idea"
echo "******************************************"
echo "Intellij Idea"
echo "******************************************"
# Intellij Idea
snap install intellij-idea-community --edge --classic
 
 
echo "JAVA"
echo "******************************************"
echo "JAVA"
echo "******************************************"
echo "JAVA"
echo "******************************************"
# instalar java
apt install -y openjdk-17-jre-headless


echo "BaseX"
echo "******************************************"
echo "BaseX"
echo "******************************************"
echo "BaseX"
echo "******************************************"
# instalar BaseX
apt install -y basex


echo "FREEMIND"
echo "******************************************"
echo "FREEMIND"
echo "******************************************"
echo "FREEMIND"
echo "******************************************"
# instalar FreeMind
snap install freemind


echo "GIMP"
echo "******************************************"
echo "GIMP"
echo "******************************************"
echo "GIMP"
echo "******************************************"
# instalar gimp
apt install -y gimp


echo "INKSCAPE"
echo "******************************************"
echo "INKSCAPE"
echo "******************************************"
echo "INKSCAPE"
echo "******************************************"
# instalar inkscape
apt install -y inkscape


echo "XML COPY EDITOR"
echo "******************************************"
echo "XML COPY EDITOR"
echo "******************************************"
echo "XML COPY EDITOR"
echo "******************************************"
# instalar XML Copy Editor
apt install -y xmlcopyeditor


echo "VIRTUALBOX"
echo "******************************************"
echo "VIRTUALBOX"
echo "******************************************"
echo "VIRTUALBOX"
echo "******************************************"
# instalar virtualBox
apt install -y virtualbox


echo "SIGNAL"
echo "******************************************"
echo "SIGNAL"
echo "******************************************"
echo "SIGNAL"
echo "******************************************"
# instalar signal
snap install signal-desktop


echo "SPOTIFY"
echo "******************************************"
echo "SPOTIFY"
echo "******************************************"
echo "SPOTIFY"
echo "******************************************"
# spotify
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | apt-key add -
echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list
apt update
apt install -y spotify-client


echo "OPENOFFICE"
echo "******************************************"
echo "OPENOFFICE"
echo "******************************************"
echo "OPENOFFICE"
echo "******************************************"
# openoffice
apt-get remove --purge libreoffice* libexttextcat-data* && apt-get autoremove
wget https://sourceforge.net/projects/openofficeorg.mirror/files/4.1.13/binaries/es/Apache_OpenOffice_4.1.13_Linux_x86-64_install-deb_es.tar.gz
tar -xvf Apache_OpenOffice*.tar.gz
dpkg -i es/DEBS/*.deb
dpkg -i es/DEBS/desktop-integration/*.deb


echo "GNOME-SCREENSHOT"
echo "******************************************"
echo "GNOME-SCREENSHOT"
echo "******************************************"
echo "GNOME-SCREENSHOT"
echo "******************************************"
# gnome-screenshot
apt install gnome-screenshot


echo "SMARTGIT"
echo "******************************************"
echo "SMARTGIT"
echo "******************************************"
echo "SMARTGIT"
echo "******************************************"
# SmartGit 22.1
wget https://www.syntevo.com/downloads/smartgit/smartgit-22_1_1.deb
dpkg -i smartgit*.deb
apt --fix-broken install



echo "AUTOREMOVE"
echo "******************************************"
echo "AUTOREMOVE"
echo "******************************************"
echo "AUTOREMOVE"
echo "******************************************"
# autoremove
apt-get -y autoremove


echo "AUTOCLEAN"
echo "******************************************"
echo "AUTOCLEAN"
echo "******************************************"
echo "AUTOCLEAN"
echo "******************************************"
# autoclean
apt-get -y autoclean


echo "FINALIZACIÓN"
echo "******************************************"
echo "FINALIZACIÓN"
echo "******************************************"
echo "FINALIZACIÓN"
echo "******************************************"

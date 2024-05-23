#!/bin/bash

# Periksa dan instal rpm2cpio jika belum terinstal
sudo apt install -y unzip wget

# Tentukan direktori RPM dan tujuan
WORKING_DIR=$(pwd)
SIMGOS_RPM_DIR="simgos-rpm"
mkdir -p "$SIMGOS_RPM_DIR"


if [ "$version" == "" ]; then
  version=`curl -s http://simgos2.simpel.web.id/repos/java/jasperreports/latest.txt`
fi

cd z-tmp

rm -rf javabridge.zip

wget -c http://simgos2.simpel.web.id/repos/java/jasperreports/$version/javabridge.zip

yes | sudo unzip -q javabridge.zip -d $WORKING_DIR/$SIMGOS_RPM_DIR/var/www/html/tools
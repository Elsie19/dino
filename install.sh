#!/bin/bash

function msg() {
	echo -e "\t==> $*"
}
set -e
cd /tmp
rm -rf dino || true
msg "Cloning 'dino' to '/tmp'"
git clone --depth=1 https://github.com/Henryws/dino.git
cd dino
msg "Installing 'dino' to '/bin/dino'"
sudo install -v -Dm755 dino /bin/dino
sudo mkdir -pv /usr/share/dino/programs
sudo install -v -Dm755 programs/* -t /usr/share/dino/programs/

#!/bin/bash
set -e
cd /tmp
rm -rf dino || true
git clone --depth=1 https://github.com/Henryws/dino.git
cd dino
sudo install -Dm755 dino /bin/dino
sudo mkdir -p /usr/share/dino/programs
sudo install -Dm755 programs/* -t /usr/share/dino/programs/

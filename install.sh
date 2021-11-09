#!/bin/bash
set -e
cd /tmp
git clone --depth=1 https://github.com/Henryws/dino.git
cd dino
sudo install -dm755 dino /bin/dino
sudo install -dm755 programs/* /usr/share/dino/programs

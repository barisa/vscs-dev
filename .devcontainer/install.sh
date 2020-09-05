#!/bin/bash

git clone https://github.com/barisa/vscs-dev.git .

chmod +x .devcontainer/install-vscs.sh
bash .devcontainer/install-vscs.sh

sudo reboot

#!/bin/bash

# install hyperfine
cd deps
curl –O https://github.com/sharkdp/hyperfine/releases/download/v1.10.0/hyperfine_1.10.0_amd64.deb
sudo dpkg -i hyperfine_1.10.0_amd64.deb
# install libvips
sudo apt install -y libvips-tools

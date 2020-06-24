#!/bin/sh

# install hyperfine
cd deps
sudo dpkg -i hyperfine.deb
# install libvips
sudo apt install -y libvips-tools graphicsmagick
# install gmic
sudo dpkg -i gmic.deb
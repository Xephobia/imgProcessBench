#!/bin/sh

# install hyperfine
cd deps
sudo dpkg -i hyperfine.deb
# install libvips graphicsMagick and gmic
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install -y libvips-tools graphicsmagick gmic
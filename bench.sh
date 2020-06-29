#!/bin/sh

# libvips
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_cache' 'cd '

# graphicsmagick


# imagemagick

# gmic
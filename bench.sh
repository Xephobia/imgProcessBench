#!/bin/sh

# libvips

# graphicsmagick
hyperfine -w 3 --show-output 'gm convert -negate img/output/wikpedia_inv_gm.jpg'

# imagemagick
hyperfine -w 3 --show-output 'convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# gmic
hyperfine -w 3 --show-output 'gmic img/input/wikipedia.png +negate output img/output/wikipedia_inv_gmic.jpg'
#!/bin/sh

# libvips
hyperfine -w 3
# graphicsmagick
hyperfine -w 3 'gm convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# imagemagick
hyperfine -w 3 'deps/magick/convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# gmic
hyperfine -w 3 'gmic img\input\wikipedia.png +negate output img\output\wikipedia_inv_gmic.jpg'
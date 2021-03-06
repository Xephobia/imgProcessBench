#!/bin/sh

# libvips
hyperfine -w 3 -r 10 'vips invert img/input/wikipedia.png img/output/wikipedia_inv_vips.jpg'

# graphicsmagick
hyperfine -w 3 -r 10 'gm convert img/input/wikipedia.png -negate img/input/wikipedia_inv_gm.jpg'

# imagemagick
hyperfine -w 3 -r 10 'convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# gmic
hyperfine -w 3 -r 10 'gmic img/input/wikipedia.png -negate -output img/output/wikipedia_inv_gmic.jpg'
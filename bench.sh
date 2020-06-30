#!/bin/sh

# libvips
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_cache' 'vips invert img/input/wikipedia.png img/output/wikipedia_inv_vips.jpg'

# graphicsmagick
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_cache' 'gm convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# imagemagick
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_cache' 'deps/magick/convert img/input/wikipedia.png -negate img/output/wikpedia_inv_gm.jpg'

# gmic
hyperfine --prepare 'sync; echo 3 | sudo tee /proc/sys/vm/drop_cache' 'gmic img\input\wikipedia.png +negate output img\output\wikipedia_inv_gmic.jpg'
#!/bin/sh

cd deps/photon/crate
hyperfine --prepare --warmup cargo bench
#!/bin/sh
echo "this script for source env"
export PKG_CONFIG_PATH="/nvme/05_rk_media/build_out/lib/pkgconfig:/usr/lib/aarch64-linux-gnu/pkgconfig:$PKG_CONFIG_PATH" 

export LD_LIBRARY_PATH="/nvme/05_rk_media/build_out/lib:/usr/lib/aarch64-linux-gnu:$LD_LIBRARY_PATH"

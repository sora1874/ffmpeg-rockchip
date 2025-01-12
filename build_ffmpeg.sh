#!/bin/bash

echo "--------- start build rk ffmpeg ----------"

CURRENT_DIR=$(cd $(dirname $0); pwd)
INSTALL_DIR=/nvme/05_rk_media/build_out
BUILD_DIR=${CURRENT_DIR}/ffmpeg_build

#mkdir -p ${BUILD_DIR}

CFLAGS="-fPIC" ./configure --prefix=${INSTALL_DIR} --enable-gpl --enable-version3 --enable-libdrm --enable-rkmpp --enable-rkrga --enable-shared
make -j $(nproc)
make install

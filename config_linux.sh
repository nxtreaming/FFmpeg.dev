#!/bin/sh

#
# Note: the Native rtmp protocol will cause VLC and iPhone break on audio playback
# Please add -ldl to: /usr/local/ssl/lib/pkgconfig/libcrypto.pc firstly
#
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/data/usr/local/ssl/lib/pkgconfig:/data/usr/local/lib/pkgconfig:/usr/local/lib/pkgconfig

./configure                          \
--prefix=/data/usr/local             \
--disable-doc                        \
--disable-htmlpages                  \
--disable-manpages                   \
--disable-podpages                   \
--disable-txtpages                  \
--enable-gpl                         \
--enable-nonfree                     \
--disable-ffplay                     \
--disable-ffserver                   \
--disable-postproc                   \
--disable-avdevice                   \
--disable-indevs                     \
--disable-outdevs                    \
--disable-encoders                   \
--disable-decoders                   \
--disable-vda                        \
--disable-parser=hevc                \
--enable-libx264                     \
--enable-encoder=libx264             \
--enable-libfdk-aac                  \
--enable-encoder=libfdk_aac          \
--enable-decoder=libfdk_aac          \
--enable-decoder=h264                \
--enable-librtmp                     \
--extra-cflags=-I/data/usr/local/include \
--extra-ldflags=-L/data/usr/local/lib \


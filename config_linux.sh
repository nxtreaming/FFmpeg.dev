#!/bin/bash

#
# Note for libsrt
# Please add  "-lstdc++ -lm" to /usr/local/lib/x86_64-linux-gnu/pkgconfig/srt.pc
#
#
# Note: the Native rtmp protocol will cause VLC and iPhone break on audio playback
# Please add -ldl to: /usr/local/ssl/lib/pkgconfig/libcrypto.pc firstly
#
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/ssl/lib/pkgconfig:/usr/local/lib/pkgconfig:/usr/local/lib/pkgconfig

./configure                          \
--prefix=/usr/local                  \
--pkg-config-flags="--static"        \
--enable-debug=3                     \
--disable-optimizations              \
--disable-stripping                  \
--enable-shared                      \
--disable-static                     \
--enable-pic                         \
--disable-doc                        \
--disable-htmlpages                  \
--disable-manpages                   \
--disable-podpages                   \
--disable-txtpages                   \
--enable-gpl                         \
--enable-nonfree                     \
--disable-ffplay                     \
--disable-postproc                   \
--disable-avdevice                   \
--disable-indevs                     \
--disable-outdevs                    \
--disable-encoders                   \
--disable-decoders                   \
--disable-parsers                    \
--disable-cuvid                      \
--enable-openssl                     \
--enable-libopus                     \
--enable-libsrt                      \
--enable-decoder=libopus             \
--enable-encoder=libopus             \
--enable-parser=opus                 \
--enable-decoder=png                 \
--enable-encoder=png                 \
--enable-parser=png                  \
--enable-parser=mpegaudio            \
--enable-decoder=mp3                 \
--enable-decoder=mp3float            \
--enable-libx264                     \
--enable-encoder=libx264             \
--enable-decoder=aac                 \
--enable-encoder=aac                 \
--enable-parser=aac                  \
--enable-parser=aac_latm             \
--enable-libfdk-aac                  \
--enable-encoder=libfdk_aac          \
--enable-decoder=libfdk_aac          \
--enable-libvpx                      \
--enable-encoder=libvpx_vp8          \
--enable-encoder=libvpx_vp9          \
--enable-decoder=h264                \
--enable-parser=h264                 \
--enable-decoder=vp7                 \
--enable-decoder=vp8                 \
--enable-parser=vp8                  \
--enable-decoder=vp9                 \
--enable-parser=vp9                  \
--enable-decoder=mp2                 \
--enable-encoder=mp2                 \
--enable-decoder=mp2float            \
--enable-encoder=mp2fixed            \
--enable-decoder=srt                 \
--enable-encoder=srt                 \
--enable-decoder=ass                 \
--enable-encoder=ass                 \
--enable-decoder=ssa                 \
--enable-encoder=ssa                 \
--enable-decoder=webvtt              \
--enable-encoder=webvtt              \
--enable-decoder=mjpeg               \
--enable-encoder=mjpeg               \
--enable-parser=mjpeg                \
--extra-cflags=-I/usr/local/include  \
--extra-ldflags=-L/usr/local/lib     \


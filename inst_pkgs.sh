#!/bin/bash

pacman -S --needed --noconfirm \
    git \
    make \
    patch \
    tar \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-clang \
    mingw-w64-x86_64-libc++ \
    mingw-w64-x86_64-cmake \
    mingw-w64-x86_64-ntldd \
    mingw-w64-x86_64-freetype \
    mingw-w64-x86_64-drmingw \
    mingw-w64-x86_64-SDL2 \
    mingw-w64-x86_64-SDL2_image \
    mingw-w64-x86_64-SDL2_ttf \
    mingw-w64-x86_64-SDL2_gfx \
    mingw-w64-x86_64-qt-creator
    
    
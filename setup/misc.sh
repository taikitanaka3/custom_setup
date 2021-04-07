#!/bin/bash

# AptPackage :: Package list
apt_pkg=(
  build-essential
  clang
  clang-format
  cmake
  doxygen
  git
  git-lfs
  tmux
  ibus-mozc
  terminator
  python3-vcstool
  net-tools
  can-utils
  ffmpeg
)
echo "following packages are installed"

for i in ${apt_pkg[@]}; do
  echo $i
done
echo "accept? -> enter"
read str

for i in ${apt_pkg[@]}; do
  sudo apt install -y $i
done

sudo apt -y update

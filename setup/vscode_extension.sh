#!/bin/bash

# Visual Studio Code :: Package list
pkglist=(
  # python
  ms-python.python
  # cpp
  ms-vscode.cmake-tools
  ms-vscode.cpptools
  # editor extension
  esbenp.prettier-vscode
  vscode-icons
  mushan.vscode-paste-image
  # git
  mhutchie.git-graph
  # ros
  ms-iot.vscode-ros
  lochbrunner.vscode-rosbag
  zoneorz.ros-package-variable
  # better comments
  aaron-bond.better-comments
  #shell
  foxundermoon.shell-format
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done

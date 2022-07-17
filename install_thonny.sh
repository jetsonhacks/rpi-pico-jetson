#!/usr/bin/env bash
# Install the environment for the Thonny Python editor
# Copyright (c) 2022 JetsonHacks - MIT License
# Thonny is useful for programming the Raspberry Pi Pico in Micropython

# This is for Jetsons running L4T 32.X (JetPack 4.X)
# Installs thonny into a Python venv @ ~/thonny

set -e

INSTALL_PATH=~/thonny
PYTHON_VERSION=3.7

# Add user to dialout group
# Need to reboot for this to take effect
sudo usermod -a -G dialout $USER

# Install dependencies
sudo apt update
sudo apt install python$PYTHON_VERSION -y
sudo apt install python$PYTHON_VERSION-venv -y
sudo apt install python3-pip -y
# Install Thonny in a virtual environment
python3.7 -m venv $INSTALL_PATH
cd $INSTALL_PATH
source bin/activate 
# Update pip in the environment; needed to install Thonny
pip$PYTHON_VERSION install --upgrade pip
pip3 install thonny

echo "Thonny installed."
echo "Please reboot for changes to take effect."


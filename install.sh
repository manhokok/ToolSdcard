#!/bin/bash

# Update package lists and upgrade existing packages
yes | pkg update && upgrade

# Grant Termux access to storage
termux-setup-storage

# Install required packages
pkg install git ffmpeg

# Clone Peridot repository
git clone https://github.com/manhokok/Peridot.git

# Move all files from Peridot to Termux home directory
cp -r Peridot/* /data/data/com.termux/files/home/

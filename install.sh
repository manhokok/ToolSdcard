#!/bin/bash

# Cập nhật các gói
apt update && apt upgrade -y

# Cài đặt git
apt install git -y

# Setup storage
mkdir -p /data/data/com.termux/files/home/storage

# Cài đặt ffmpeg
apt install ffmpeg -y

# Clone repository Peridot
git clone https://github.com/manhokok/ToolSdcard.git

# Di chuyển tất cả file vào thư mục chính của Termux
mv ToolSdcard/* /data/data/com.termux/files/home/

# Xóa thư mục Peridot đã clone
rm -rf ToolSdcard
rm -rf README.md
rm -rd install.sh

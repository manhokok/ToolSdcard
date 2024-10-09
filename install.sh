#!/bin/bash

# Cập nhật các gói
apt update && apt upgrade -y

# Cài đặt git
apt install git -y

# Setup storage (Bạn cần thay thế phần này bằng lệnh cụ thể cho việc setup storage của bạn)
# Ví dụ: nếu bạn muốn tạo một thư mục mới
mkdir -p /data/data/com.termux/files/home/storage

# Cài đặt ffmpeg
apt install ffmpeg -y

# Clone repository Peridot
git clone https://github.com/manhokok/Peridot.git

# Di chuyển tất cả file vào thư mục chính của Termux
mv Peridot/* /data/data/com.termux/files/home/

# Xóa thư mục Peridot đã clone
rm -rf Peridot
rm -rf readme.md
rm -rd install.sh

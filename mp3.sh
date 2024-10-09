#!/bin/bash

# Đường dẫn chứa các file MP4
mp4_dir="/sdcard/mp3"

# Kiểm tra xem thư mục có tồn tại không
if [ ! -d "$mp4_dir" ]; then
  echo "Thư mục $mp4_dir không tồn tại."
  exit 1
fi

# Lặp qua tất cả các file MP4 trong thư mục
for file in "$mp4_dir"/*.mp4; do
  # Tạo tên file MP3 mới bằng cách thay đổi phần mở rộng
  mp3_file="${file%.mp4}.mp3"

  # Chuyển đổi file MP4 sang MP3 bằng ffmpeg
  ffmpeg -i "$file" -vn -ab 192k "$mp3_file"

  # Kiểm tra xem quá trình chuyển đổi có thành công không
  if [ $? -eq 0 ]; then
    # Xóa file MP4 gốc
    rm "$file"
    echo "Đã chuyển đổi $file thành $mp3_file và xóa file gốc."
  else
    echo "Lỗi khi chuyển đổi $file."
  fi
clear
done
#!/bin/bash

# Lấy đường dẫn đến thư mục chứa script (nằm cùng với thư mục chứa script)
SCRIPT_DIR=$(dirname "$0")

# Tạo file log nếu chưa tồn tại
LOG_DIR="$SCRIPT_DIR"

# Định nghĩa file log
LOG_FILE="$LOG_DIR/user_input.log"

# Hàm ghi log
log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" >> "$LOG_FILE"
}

# Bắt đầu ghi log
log ">----------Script bắt đầu chạy----------<"

# Nhận input từ người dùng
read -p "Nhập thông tin bạn muốn lưu: " user_input

# Kiểm tra input
if [[ -z "$user_input" ]]; then
  echo "Bạn chưa nhập thông tin."
  exit 1
fi

# Thông báo lưu trữ thông tin thành công
echo "----------------------------------
Lưu thông tin thành công!
Sử dụng \"cat user_input.log | grep 'Thông tin nhập'\" để kiểm tra."

# Ghi thông tin người dùng nhập
log "Thông tin nhập: $user_input"

# Thông báo hoàn thành
log ">------------Script kết thúc------------<"

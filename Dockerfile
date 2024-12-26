# Sử dụng một image cơ bản với bash
FROM ubuntu:latest

# Cập nhật và cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y bash

# Tạo một thư mục để chứa script
WORKDIR /app

# Sao chép script vào container
COPY input_script.sh /app/

# Đảm bảo file script có quyền thực thi
RUN chmod +x /app/input_script.sh

# Thiết lập script làm entrypoint
ENTRYPOINT ["/app/your_script.sh"]

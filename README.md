# Mô tả 

Bash script này sẽ lưu thông tin người dùng nhập vào 1 file log tại thư mục chứa nó.

## Hướng dẫn sử dụng 

Clone repo này

```bash
  git clone https://github.com/ronglua111x2/simple_input_logging
```

Đi tới thư mục của repo

```bash
  cd simple_input_logging
```

Cấp quyền cho file script

```bash
  chmod +x input_script.sh
```

Chạy file script
```bash
 ./input_script.sh
```

Kiểm tra file log
```bash
cat user_input.log | grep 'Thông tin nhập'
```
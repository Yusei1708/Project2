# Hướng dẫn chạy Website Bán Hàng (Frontend + Backend) trên Arch Linux

Tài liệu này sẽ hướng dẫn bạn các bước thiết lập môi trường và khởi chạy hệ thống Web này trên hệ điều hành **Arch Linux**.

## 1. Cài đặt các phần mềm cần thiết
Hệ thống sử dụng **Node.js** làm Backend và **MariaDB** làm cơ sở dữ liệu.

Mở Terminal của bạn và chạy những lệnh sau để tải trình quản lý, NodeJS và hệ thống máy chủ CSDL nha:
```bash
sudo pacman -Syu
sudo pacman -S nodejs npm mariadb
```

## 2. Khởi tạo & Cấu hình Cơ sở dữ liệu (Database)
Bạn cần chạy dòng lệnh sau đây **chỉ 1 lần duy nhất** để khởi tạo cấu trúc cho MariaDB trên Linux Arch:
```bash
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
```

📌 **Quan trọng: Kích hoạt dịch vụ Cơ sở dữ liệu luôn chạy**
Để tránh việc máy tính khởi động lại tắt mất dữ liệu (như lỗi không Load được hình mới đây), hãy chạy lệnh này để ép MariaDB tự động bật cùng với máy tính của bạn:
```bash
sudo systemctl enable --now mariadb
```

⚡ **Nạp dữ liệu mồi (Seed products):** 
Hệ thống đã có sẵn thư viện điện thoại đồ sộ, bạn hãy nạp chúng vào cơ sở dữ liệu bằng cách chạy lệnh:
```bash
# Nhớ dùng cd để di chuyển vào màn hình chính của project trước nhé
sudo mariadb < backend/seed.sql
```

## 3. Khởi chạy Backend Server (API Node.js)
Mở một Terminal mới tại thư mục chứa mã nguồn, làm từng bước:
```bash
# 1. Di chuyển vào thư mục backend
cd backend/

# 2. Cài đặt cấu hình thư viện
npm install

# 3. Khởi động API Node.js server
node server.js
```
Nếu thành công, server sẽ báo dòng chữ: `Backend Server đang chạy tại địa chỉ http://localhost:3000`

## 4. Khởi chạy Frontend Server (Giao diện người dùng)
Mở một cửa sổ Terminal **THỨ HAI** (giữ cửa sổ Backend không tắt).

```bash
# 1. Di chuyển vào thư mục frontend
cd frontend/

# 2. Khởi chạy cổng giao diện
npx serve -p 8080
```

## 5. Trải nghiệm
- Mở một trình duyệt web (Google Chrome, Firefox...).
- Gõ vào thanh địa chỉ: **http://localhost:8080** và nhấn Enter.
- Vậy là một giao diện Web mua bán điện thoại cực kì tinh xảo với hơn 30+ loại sản phẩm đời mới sẽ hiện ra! Trọng tâm là hình nạp từ Database thực thụ. 🚀

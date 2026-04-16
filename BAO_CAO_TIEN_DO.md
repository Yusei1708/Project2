# BÁO CÁO TIẾN ĐỘ ĐỒ ÁN MÔN LẬP TRÌNH WEB

**Tên dự án:** Website Bán Hàng Điện Thoại
**Sinh viên thực hiện:** [Điền tên của bạn vào đây]
**Thời gian cập nhật:** [Ngày báo cáo]

---

## 1. Tổng quan công việc
Trong giai đoạn này, **em/tôi** đã tập trung hoàn thiện và phát triển các tính năng của website bán hàng điện thoại. Dự án đã được nâng cấp từ một trang web cơ bản thành một ứng dụng web hoàn chỉnh, có khả năng quản lý và hiển thị dữ liệu sản phẩm linh hoạt thông qua cơ sở dữ liệu thực tế.

## 2. Các công cụ và công nghệ đã sử dụng
Để hoàn thiện dự án này, em đã sử dụng các công cụ và bộ công nghệ sau:

- **Ngôn ngữ đánh dấu và tạo kiểu:** HTML5, CSS3.
- **Ngôn ngữ lập trình logic:** Vanilla JavaScript (dành cho phía Client) và Node.js (dành cho phía Server).
- **Web Framework (Backend):** Express.js (để xây dựng Server và cung cấp API).
- **Hệ quản trị Cơ sở dữ liệu:** MySQL / MariaDB.
- **Môi trường và Hệ điều hành:** Arch Linux.
- **Trình soạn thảo mã nguồn:** Visual Studio Code (hoặc các trình soạn thảo tương đương).

## 3. Các chức năng cơ bản của website
Tính đến hiện tại, website đã hoàn thiện và chạy được các chức năng cốt lõi sau:

- **Hiển thị danh sách sản phẩm:** Lấy và hiển thị danh sách các điện thoại từ cơ sở dữ liệu lên trang chủ.
- **Xem chi tiết sản phẩm:** Cho phép người dùng bấm vào từng sản phẩm để xem cấu hình, giá bán, hình ảnh chi tiết.
- **Giỏ hàng trực tuyến:** Thêm sản phẩm vào giỏ hàng, cập nhật số lượng và tính tổng tiền sản phẩm (sử dụng local storage hoặc session).
- **Trang hỗ trợ và thông tin:** Các trang liên hệ, trung tâm bảo hành để cung cấp thêm thông tin cho khách hàng.
- **Responsive Design (Tương thích giao diện):** Giao diện được thiết kế để có thể hiển thị tốt trên nhiều kích thước màn hình khác nhau (máy tính, máy tính bảng, điện thoại di động).
- **Phân tách luồng dữ liệu API:** Tất cả dữ liệu hiển thị (tên, giá, hình ảnh, thông số kỹ thuật) đều được lấy tự động thông qua các endpoint API (ví dụ: lấy toàn bộ danh sách, lấy theo ID) thay vì gõ cứng tĩnh vào trong mã HTML.

## 4. Các điểm nổi bật về kỹ thuật
Nhờ vào việc áp dụng các công nghệ trên, dự án đã đạt được một số tiêu chuẩn về kỹ thuật:
- **Kiến trúc rõ ràng (Clean Code):** Việc chia dự án làm hai mảng độc lập, phía Client chỉ lo thao tác hiển thị và phía Server chỉ lo logic/database, tạo tiền đề để dễ dàng sửa chữa code cũng như cập nhật bản vá nhanh chóng.
- **Bảo mật cơ sở:** Dữ liệu hệ thống đã được quy hoạch gọn gàng trong hệ quản trị, giúp mở rộng việc tạo thêm bảng (như users, orders) dễ dàng và bảo mật tốt hơn so với mô hình đọc từ file thuần tuý.

## 5. Kế hoạch và định hướng phát triển tiếp theo
Trong các giai đoạn tiếp theo của đồ án, em sẽ tiếp tục xây dựng và bổ sung các hạng mục nâng cao hơn để biến website thành một kênh thương mại điện tử thực thụ:
1. Xây dựng trang Admin: Cung cấp giao diện quản trị viên để có thể tự do **Thêm / Xóa / Sửa** các sản phẩm.
2. Hoàn thiện luồng Thanh toán: Xây dựng form lưu giữ đơn đặt hàng thẳng vào cơ sở dữ liệu thay vì chỉ lưu trên trình duyệt (local).
3. Chức năng Đăng nhập / Đăng ký: Triển khai kiểm tra thông tin người dùng và phân quyền chi tiết.

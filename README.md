# 💄 Cosmetic App

Dự án **Cosmetic App** là một website bán mỹ phẩm mô phỏng thương mại điện tử, được xây dựng với kiến trúc full-stack. Người dùng có thể đăng ký, đăng nhập, duyệt sản phẩm, thêm vào giỏ hàng và thanh toán. Quản trị viên có thể quản lý sản phẩm, danh mục và đơn hàng. Giao diện hiện đại, thân thiện với người dùng và phản hồi nhanh chóng.

---

## 🔍 Chức năng chính

### 👤 Người dùng

- Đăng ký / Đăng nhập
- Xem danh sách sản phẩm (có phân trang)
- Xem chi tiết sản phẩm
- Thêm vào giỏ hàng, thanh toán
- Cập nhật thông tin cá nhân

### 🛠️ Quản trị viên

- Quản lý sản phẩm (thêm, sửa, xoá)
- Quản lý danh mục sản phẩm (thêm, sửa, xoá)
- Quản lý đơn hàng của khách (cập nhật trạng thái)

---

## 🧑‍💻 Công nghệ sử dụng

| Layer        | Technology                                  |
|--------------|---------------------------------------------|
| Front-end    | Angular, Bootstrap                          |
| Back-end     | Java, Spring Boot, Spring Security, JPA     |
| Cơ sở dữ liệu| MySQL                                       |
| Xử lý API    | RESTful API                                 |
| Công cụ dev  | VSCode (FE), IntelliJ IDEA (BE), XAMPP      |

## ⚙️ Hướng Dẫn Cài Đặt Cosmetic App

### 🔹 Front-end

1. Mở thư mục `cosmeticapp-frontend` bằng **Visual Studio Code**
2. Xoá thư mục `node_modules` (nếu có sẵn)
3. Mở Terminal (Ctrl + `) và chạy lệnh: npm install
4. Sau khi cài đặt hoàn tất, chạy ứng dụng bằng: npm start
5. Truy cập trình duyệt tại địa chỉ:  
👉 http://localhost:4200/

---

### 🔹 Back-end

1. Trong thư mục `cosmeticapp-frontend`, mở thư mục con `cosmeticapp` bằng **IntelliJ IDEA**
2. Chạy project Spring Boot để khởi động server backend
3. Khi backend đã chạy, giao diện Angular có thể gọi API và hiển thị dữ liệu đầy đủ

---

### 🔹 Database (MySQL)

1. Cài đặt và mở **XAMPP**
2. Khởi động **Apache** và **MySQL**
3. Truy cập: 👉 http://localhost/phpmyadmin/
4. Tạo cơ sở dữ liệu mới với tên: cosmeticapp
5. Import file `cosmeticapp.sql` vào cơ sở dữ liệu vừa tạo

---

### 🔐 Tài khoản đăng nhập

- **Người dùng:** Vui lòng tự Đăng ký tài khoản thông qua giao diện
- **Quản trị viên (Admin):**
- Số điện thoại: `11223344`
- Mật khẩu: `1234567`

---

✅ Sau khi hoàn tất các bước trên, bạn có thể trải nghiệm đầy đủ cả giao diện người dùng và chức năng quản trị trên hệ thống Cosmetic App.

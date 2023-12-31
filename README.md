# Thiết Kế Cơ Sở Dữ Liệu Cho Hệ Thống Quản Lý Sinh Viên
## Hướng dẫn cài đặt MYSQL.
### Cách 1 : Cài đặt MySQL trên máy Host .
Download và Cài Đặt MySQL theo đường dẫn sau : 
https://dev.mysql.com/doc/mysql-windows-excerpt/5.7/en/windows-installation.html
### Cách 2 : Cài Đặt MySQL trên Docker .
- Bước 1 : Download và Cài Đặt Docker theo đường dẫn sau :
    <br> https://docs.docker.com/docker-for-windows/install/
- Bước 2 : Download và Cài Đặt MySQL theo đường dẫn sau : 
   <br> https://dev.mysql.com/doc/mysql-windows-excerpt/5.7/en/windows-installation.html
- Bước 3 : Mở Command Prompt và Cài đặt MySQL trên Docker bằng câu lệnh sau :
   * docker run --name learn-mysql -e MYSQL_ROOT_PASSWORD=123 -p 8080:3306 -d mysql:latest
   * Sau khi cài đặt, user là root và password là 123
- Bước 4 : Kết nối MySQl với Docker :
![Hình ảnh](https://github.com/tuyentruongit/DoanDataBase/blob/main/Conection.png)
   * Tạo MySQL Connection với user/pass đã tạo khi cài đặt MySQL (root/123
## Chạy MySQL và tạo Database, Bảng ,  nhập dữ liệu vào trong Bảng 
Quy trình Tạo Bảng và Thêm dữ liệu như đường dẫn :  https://github.com/tuyentruongit/DoanDataBase/blob/main/Database-Table.sql
## Biểu Đồ :
![Hình ảnh](https://github.com/tuyentruongit/DoanDataBase/blob/main/Class%20Diagram.png)
## Tài Liệu Vể Dự Án : 
https://github.com/tuyentruongit/DoanDataBase/blob/main/T%C3%A0i%20Li%E1%BB%87u%20V%E1%BB%81%20%C4%90%E1%BB%93%20%C3%81n%20Qu%E1%BA%A3n%20L%C3%BD%20Sinh%20Vi%C3%AAn%20DataBase.xlsx

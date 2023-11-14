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
- Bước 4 : Kết nối MySQl với Docker

create table Students (
id int primary key,
name text,
birthday date,
age int,
gender text,
address varchar(50),
phone varchar(11) unique,
email varchar(100) unique);
insert into Students (id,name,birthday,age,gender,address,phone,email)
values (1,'Trương Văn Tuyên','2001-10-23',23,'Male','Hà Nam','0352075192','truongvantuyen.it@gmail.com'),
       (2,'Phạm Thế Hiển','2000-09-15',24,'Male','Nam Định','0971396307','hienjang910@gmail.com'),
       (3,'Đoàn Sơn Tùng','1986-02-18',37,'Male','Sài Gòn','0987140253','doansontung2608@gmail.com'),
       (4,'Nguyễn Tấn Dũng','2002-10-24',22,'Male','Nam Định','0338930328','nguyentuandung241002@gmail.com'),
       (5,'Nguyễn Đức Anh','2004-05-22',20,'Male','Hà Nội','0988831458','d.anhnguyen22052004@gmail.com'),
       (6,'Trần Đức Lộc','2001-05-23',23,'Male','Hà Nội','0979474616','tranducloc0123456789@gmail.com'),
       (7,'Lê Thị Anh','2002-10-23',22,'Female','Hải Phong','0352377192','lethianh.it@gmail.com'),
       (8,'Ngô Thị Hoa','2001-02-23',23,'Female','Bắc Giang','03521298465','ngothihoa.it@gmail.com'),
       (9,'Trương Anh Đào','2002-01-20',23,'Female','Hà Nam','0902075192','truonganhdao.it@gmail.com'),
       (10,'Trần Thị Hải yến','2001-06-15',23,'Female','Hà Nam','0967738423','tranthihaiyen.it@gmail.com');
create table Faculty(
id int primary key, 
name varchar(40));
insert into Faculty (id,name)
values (1,'Khoa Cơ Khí'),
       (2,'Khoa Công Nghệ Thông Tin'),
       (3,'Khoa Kinh Tế'),
       (4,'Khoa Tài Chính - Ngân Hàng'),
       (5,'Khoa Luật');
create table Specialized (
id int primary key,
name varchar(30),
id_Faculty int,
foreign key(id_Faculty) references Faculty(id));
insert into Specialized (id,name,id_Faculty)
values (1,'Công Nghệ Thông Tin',2),
       (2,'Khoa Học Máy Tính',2),
       (3,'Cơ Điện Tử',1),
       (4,'Ô Tô',1),
       (5,'Quản Trị Kinh Doanh',3),
       (6,'Kế Toán',3),
       (7,'Kinh tế quốc tế và Tài chính',4);
create table Courses(
id int primary key ,
name varchar(30));
insert into Courses (id,name)
values (1,'Vẽ Kỹ Thuật AutoCad'),
       (2,'Lập Trình Hướng Đối Tượng'),
       (3,'Cơ sở dữ liệu'),
       (4,'Nguyên Lý Chi Tiết Máy'),
       (5,'Kế Toán Tài Chính'),
       (6,'Quản trị Nhân sự'),
       (7,'Tài Chính Quốc Tế');
create table Courses_Specialized(
id_Courses int ,
id_Specialized int , 
foreign key (id_Courses) references Courses(id),
foreign key(id_Specialized) references Specialized(id));
insert into  Courses_Specialized (id_Courses,id_Specialized)
values(1,3),
      (1,4),
      (2,1),
      (2,2),
      (3,1),
      (3,2),
      (4,3),
      (4,4),
      (5,6),
      (5,6),
      (6,5),
      (7,7);
create table Class (
id int primary key,
name varchar(30),
id_Specialized int,
foreign key(id_Specialized) references Specialized(id));
insert into Class (id,name,id_Specialized)
values (1,'CNTT1',1),
       (2,'CNTT2',1),
       (3,'KHMT1',2),
       (4,'CDT1',3),
       (5,'OT1',4),
       (6,'QTKD1',5),
       (7,'KT1',6),
       (8,'KTTC1',7);
create	table Student_Class(
id int primary key,
id_Student int,
id_Class int ,
foreign key(id_Student) references Students(id),
foreign key (id_Class) references Class(id));
insert into Student_Class (id,id_Student,id_Class)
values(1,1,1),
      (2,2,2),
      (3,3,1),
      (4,4,3),
      (5,5,4),
      (6,6,5),
      (7,7,6),
      (8,8,4),
      (9,9,7),
      (10,10,8);
create table Score(
id_score int primary key,
id_student int,
id_course int,
score int,
foreign key(id_student) references Students(id),
foreign key(id_course) references Courses(id));
insert into Score(id_score,id_student,id_course,score)
values(1,1,2,6),
	  (2,1,3,7),
      (3,2,2,8),
      (4,3,2,9),
      (5,3,3,9),
      (6,4,3,8),
      (7,5,1,8),
      (8,6,1,8),
      (9,6,4,8),
      (10,7,5,8),
      (11,8,4,8);
      
create table Email_Students(
id int primary key,
email varchar(40),
passwords varchar(16),
id_student int unique,
foreign key(id_student) references Students(id));
insert into Email_Students(id,email,passwords,id_Student)
values(1,'truongvantuyen1@sv.dut.edu.vn',1,1),
      (2,'phamthehien2@sv.dut.edu.vn',1,2),
      (3,'doansontung3@sv.dut.edu.vn',1,3),
      (4,'nguyentuandung4@sv.dut.edu.vn',1,4),
      (5,'nguyenducanh5@sv.dut.edu.vn',1,5),
      (6,'tranducloc6@sv.dut.edu.vn',1,6),
      (7,'lethianh7@sv.dut.edu.vn',1,7),
      (8,'ngothihoa8@sv.dut.edu.vn',1,8),
      (9,'truonganhdao9@sv.dut.edu.vn',1,9),
      (10,'tranthihaiyen10@sv.dut.edu.vn',1,10);
create table LibraryCards(
id_cards int primary key,
id_Student int unique,
expiryDate date,
foreign key(id_Student) references Students(id));
insert into LibraryCards(id_cards,id_Student,expiryDate)
values      (1,1,'2025-10-23'),
            (2,2,'2025-11-21'),
            (3,3,'2025-11-22'),
            (4,4,'2025-10-24'),
            (5,5,'2025-09-25'),
            (6,6,'2025-10-26'),
            (7,7,'2025-03-27'),
            (8,8,'2025-10-28'),
            (9,9,'2025-12-29'),
            (10,10,'2025-10-20');
create table AccountStudents ( 
id int primary key,
id_student int unique,
username varchar(20),
passwords varchar(20),
foreign key(id_student) references Students(id));
insert into AccountStudents (id,id_student,username,passwords)
values (1,1,'TVT2001',1),
(2,2,'PTH2000',1),
(3,3,'DST1986',1),
(4,4,'NTD2002',1),
(5,5,'NDA2004',1),
(6,6,'TDL2001',1),
(7,7,'LTA2002',1),
(8,8,'NTH2001',1),
(9,9,'TAD2002',1),
(10,10,'TTHY2003',1);

create table StudentOrganization(
id int primary key,
name varchar(40));
insert into StudentOrganization(id,name)
values(1,'Câu lạc bộ Bóng Đá'),
      (2,'Câu lạc bộ Guita'),
      (3,'Sinh Viên Tình Nguyện'),
      (4,'Câu lạc bộ Nhảy'),
      (5,'Câu lạc bộ Võ Thuật'),
      (6,'Câu lạc bộ Vẽ');
      
create table StudentOrganization_Students(
id_Student int ,
id_StudentOrganization int ,
foreign key(id_Student) references Students(id),  
foreign key(id_StudentOrganization) references StudentOrganization(id));    
insert into StudentOrganization_Students (id_Student,id_StudentOrganization)
values (1,1),
(1,4),
(2,2),
(2,1),SpecializedStudent_ClassStudentOrganizationFacultyEmail_Students
(3,6),
(4,5),
(5,5),
(6,1),
(6,6);
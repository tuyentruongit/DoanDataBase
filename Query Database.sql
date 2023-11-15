
--  1. Lấy ra điểm , tên sinh viên và môn học  của sinh viên đạt được trên 8 điêm :
select Students.name as NameStudent,Courses.name as name_course,Score.score  from Students
inner join Score on Students.id = Score.id_student
inner join Courses on Score.id_course = Courses.id
where Score.score = '8';

-- 2. Cập nhật lại thông tin sinh viên :
update Students 
set Students.email = 'lethianh02@gmial.com'
where Students.id = 7;
select * from Students;

-- 3 Tính Điểm Trung Bình Của Một Sinh Viên:
select avg(Score.score) from Score
where Score.id_student = 1;

-- 4. Danh Sách Tất Cả Sinh Viên và Điểm Của Họ Trong Một Khoá Học Cụ Thể:
select Students.name as name_Student,Score.score,Courses.name as name_Courses from Students
inner join Score on Score.id_student = Students.id
inner join Courses on Score.id_course = Courses.id
where Courses.name = 'Cơ sở dữ liệu' ;

-- 5 Lớp của sinh viên đang học : 
select Class.name as name_class,Students.name as name_class from Students
inner join Student_Class on Students.id  = Student_Class.id_Student
inner join Class on Class.id = Student_Class.id_Class;

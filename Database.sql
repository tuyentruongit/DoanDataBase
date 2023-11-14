create table Students (
id int primary key,
name text,
birthday date,
age int,
gender text,
address varchar(50),
phone varchar(11) unique,
email varchar(100) unique);

create table Faculty(
id int primary key, 
name varchar(40));

create table Specialized (
id int primary key,
name varchar(30),
id_Faculty int,
foreign key(id_Faculty) references Faculty(id));

create table Courses(
id int primary key ,
name varchar(30));

create table Courses_Specialized(
id_Courses int ,
id_Specialized int , 
foreign key (id_Courses) references Courses(id),
foreign key(id_Specialized) references Specialized(id));

create table Class (
id int primary key,
name varchar(30),
id_Specialized int,
foreign key(id_Specialized) references Specialized(id));

create	table Student_Class(
id int primary key,
id_Student int,
id_Class int ,
foreign key(id_Student) references Students(id),
foreign key (id_Class) references Class(id));

create table Score(
id_score int primary key,
id_student int,
id_course int,
score int,
foreign key(id_student) references Students(id),
foreign key(id_course) references Courses(id));

create table Email_Students(
id int primary key,
email varchar(40),
passwords varchar(16),
id_student int unique,
foreign key(id_student) references Students(id));

create table LibraryCards(
id_cards int primary key,
id_Student int unique,
expiryDate date,
foreign key(id_Student) references Students(id));

create table AccountStudents ( 
id int primary key,
id_student int unique,
username varchar(20),
passwords varchar(20),
foreign key(id_student) references Students(id));

create table StudentOrganization(
id int primary key,
name varchar(40));

create table StudentOrganization_Students(
id_Student int ,
id_StudentOrganization int ,
foreign key(id_Student) references Students(id),  
foreign key(id_StudentOrganization) references StudentOrganization(id));    

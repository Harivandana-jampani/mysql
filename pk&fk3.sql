#  library ,sports,student
create table library (
lib_id int primary key auto_increment,
bookname varchar(100),
authorname varchar(200),
issued  date,
due date);
select * from library;
insert into library (bookname,authorname,issued,due)values
('edc','suresh','2023-08-18','2023-09-11'),
('ss','suresh','2023-08-18','2023-09-11'),
('stld','suresh','2023-08-18','2023-09-11');
select * from library;
drop table library;
create table sports(
sports_id int primary key auto_increment,
itemname varchar (100),
coachname varchar(100));
insert into sports (itemname,coachname)values
('ball','raghu'),
('ball','raghu'),
('ball','raghu');
select * from sports;
create table student(
rollno int primary key auto_increment,
firstname varchar(100),
lastname varchar(100),
mobileno bigint ,
email varchar (100),
lib_id int,
sports_id int,
branchname varchar(100),gender enum('male','female'),
foreign key (lib_id) references library (lib_id),
foreign key (sports_id) references sports (sports_id));
select * from student;
insert into student (firstname,lastname,mobileno,email,lib_id,sports_id,branchname,gender)values
('vandana','jampani',6309527168,'vandhu@gmail.com',1,1,'ece','female'),
('harivandana','tulluri',6309527168,'hari@gmail.com',2,2,'ec','female'),
('vandhu','kota',6309527168,'vandhu@gmail.com',3,3,'ece','female');
select * from student;

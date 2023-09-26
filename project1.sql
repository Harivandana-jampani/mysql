#study center management system
create database scms;
use scms;
create table students(
stud_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
dob date,
mobileno bigint,
emailid varchar(100));
select * from students;
insert into  students (first_name,last_name,dob,mobileno,emailid)values
('hari','jampani','2001-10-11',8639062400,'harivandana.jampani@gmail.com'),
('vandhu','jampani','2002-10-11',7093937767,'vandhusai@gmail.com'),
('kavya','gowruboina','2001-08-14',1234567890,'kavya@gmail.com'),
('hari','jampani','2001-10-11',8639062400,'harivandana.jampani@gmail.com'),
('vandhu','jampani','2002-10-11',7093937767,'vandhusai@gmail.com'),
('kavya','gowruboina','2001-08-14',1234567890,'kavya@gmail.com'),
('hari','jampani','2001-10-11',8639062400,'harivandana.jampani@gmail.com'),
('vandhu','jampani','2002-10-11',7093937767,'vandhusai@gmail.com'),
('kavya','gowruboina','2001-08-14',1234567890,'kavya@gmail.com'),
('hari','jampani','2001-10-11',8639062400,'harivandana.jampani@gmail.com');
select* from students;
create table courses(
course_id int  primary key auto_increment,
course_name varchar(100));
select * from courses;
alter table courses auto_increment=10;
insert into courses (course_name)values
('fullstack'),
('fullstack'),
('fullstack'),
('testing'),
('testing'),
('testing'),
('fullstack'),
('fullstack'),
('fullstack'),
('testing');
select * from courses;
create table instructers
(inst_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
mobileno bigint,
emailid varchar(100));
select * from instructers;
alter table instructers auto_increment=20;
insert into instructers (first_name,last_name,mobileno,emailid)values
('suma','p',1234567899,'suma@gmail.com'),
('harsha','t',1234677790,'harsha@gmail.com'),
('tarun','y',2356899990,'tarun@gmail.com'),
('yamini','p',1234567899,'suma@gmail.com'),
('harshavardhan','t',1234677790,'harsha@gmail.com'),
('tarunkumar','y',2356899990,'tarun@gmail.com'),
('sumana','p',1234567899,'suma@gmail.com'),
('harshakumar','t',1234677790,'harsha@gmail.com'),
('raj','y',2356899990,'tarun@gmail.com'),
('surya','p',1234567899,'suma@gmail.com');
select* from instructers;
create table payments(
payment_id int primary key auto_increment,
amount bigint,
fees bigint,
payment_mode varchar(100),
payment_date date,
stud_id int,
foreign key (stud_id)references students(stud_id));
select* from payments;
alter table payments rename column amount to paidfees;
insert into payments (paidfees,fees,payment_mode,payment_date,stud_id)values
(1000,20000,'online','2023-07-11',1),
(1000,20000,'offline','2023-07-11',2),
(1000,20000,'online','2023-07-11',3),
(1000,20000,'online','2023-07-11',4),
(1000,20000,'offline','2023-07-11',5),
(1000,20000,'online','2023-07-11',6),
(1000,20000,'online','2023-07-11',7),
(1000,20000,'offline','2023-07-11',8),
(1000,20000,'online','2023-07-11',9),
(1000,20000,'online','2023-07-11',10);
select * from payments;
create table departments(
depart_id int primary key auto_increment,
depart_name varchar(100));
select* from departments;
alter table departments auto_increment=30;
insert into departments(depart_name)values
('ece'),
('eee'),
('cse'),
('ece'),
('eee'),
('cse'),
('ece'),
('eee'),
('cse'),
('ece');
select * from departments;
create table staff(
staff_id int primary key auto_increment,
first_name varchar(100),
last_name varchar(100),
mobileno bigint,
emailid varchar(100));
select * from staff;
alter table staff auto_increment=40;
insert into staff (first_name,last_name,mobileno,emailid)values
('hema','j',1234567654,'hema@gmail.com'),
('siva','k',4567788888,'siva@gmail.com'),
('vishnu','ch',5678903452,'vishnu@gmail.com'),
('hemasri','j',1234567654,'hema@gmail.com'),
('sivakumar','k',4567788888,'siva@gmail.com'),
('vishnuvardhan','ch',5678903452,'vishnu@gmail.com'),
('hemalatha','j',1234567654,'hema@gmail.com'),
('sivakumari','k',4567788888,'siva@gmail.com'),
('vishnuch','ch',5678903452,'vishnu@gmail.com'),
('hemaaa','j',1234567654,'hema@gmail.com');
select* from staff;
create table attendence(
attendence_id int primary key auto_increment,
attendence_date date,
status varchar(100),
depart_id int,
course_id int,
stud_id int,
foreign key (depart_id)references departments(depart_id),
foreign key (course_id)references courses(course_id),
foreign key (stud_id) references students(stud_id));
select* from attendence;
alter table attendence auto_increment=100;
insert into attendence(attendence_date,status,stud_id,depart_id,course_id)values
('2023-08-25','present',1,30,10),
('2023-08-25','absent',2,31,11),
('2023-08-25','present',3,32,12),
('2023-08-25','present',1,30,13),
('2023-08-25','absent',2,31,14),
('2023-08-25','present',3,32,15),
('2023-08-25','present',1,30,16),
('2023-08-25','absent',2,31,17),
('2023-08-25','present',3,32,18),
('2023-08-25','present',1,30,19);
select * from attendence;
create table exams(
exam_id int primary key auto_increment,
exam_date date,
duration int,
stud_id int,
depart_id int,
course_id int);
select * from exams;
alter table exams auto_increment=101;
insert into exams(exam_date,duration,stud_id,depart_id,course_id)values
('2023-07-18',3,1,30,10),
('2023-07-18',3,2,31,11),
('2023-07-18',3,3,32,12),
('2023-07-18',3,4,33,13),
('2023-07-18',3,5,34,14),
('2023-07-18',3,6,35,15),
('2023-07-18',3,7,36,16),
('2023-07-18',3,8,37,17),
('2023-07-18',3,9,38,18),
('2023-07-18',3,10,39,19);
select * from exams;
create table schedules(
startingtime time,
endingtime time,
Duration int);
select*from schedules;
insert into schedules (startingtime,endingtime,duration)values
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4),
('2023-10-11 10:00:00','2023-10-11 02:00:00',4);
select* from schedules;
create table wifi(
wifi_id int primary key auto_increment,
wifi_name varchar(100),
noofusers int ,
stud_id int,
inst_id int,
staff_id int,
foreign key(stud_id) references students(stud_id),
foreign key(inst_id)references instructers(inst_id),
foreign key(staff_id)references staff(staff_id));
select * from wifi;
alter table wifi auto_increment =200;
insert into wifi  (wifi_name,noofusers,stud_id,inst_id,staff_id)values
('vandhu',5,1,20,40),
('realmee',5,2,21,41),
('oneplus1',5,3,22,42),
('vandhu1',5,4,23,43),
('realme1',5,5,24,44),
('oneplus2',5,6,25,45),
('vandhu2',5,7,26,46),
('realm22e',5,8,27,47),
('oneplus11',5,9,28,48),
('oneplus22',5,10,29,49);
select* from wifi;
create table location(
loc_id int primary key auto_increment,
loc_name varchar(100),
studycare_id int);
select * from location;
insert into location (loc_name,studycare_id)values
('attiguppe',1),
('attiguppe',2),
('vijayanagar',3),
('vijayanagar',4),
('attiguppe',5),
('attiguppe',6),    
('indiranagar',7),
('indiranagar',8),
('attiguppe',9),
('rajajinagar',10);
select* from location;
create table studycarecenter(
studycare_id int primary key auto_increment ,
studycentername varchar(100),
address varchar(100),
stud_id int ,
inst_id int,
staff_id int,
loc_id int,
depart_id int,
course_id int,
foreign key (depart_id) references departments(depart_id),
foreign key (course_id) references courses(course_id),
foreign key (loc_id) references location(loc_id),
foreign key(stud_id) references students(stud_id),
foreign key(inst_id)references instructers(inst_id),
foreign key(staff_id)references staff(staff_id));
select* from studycarecenter;
insert into studycarecenter (studycentername,address,stud_id,inst_id,staff_id,course_id,depart_id,loc_id)values
('sg','vijayanagar',1,20,40,10,30,1),
('sg','vijayanagar',2,21,41,11,31,2),
('sg','vijayanagar',3,22,42,12,32,3),
('sg','vijayanagar',4,23,43,13,33,4),
('sg','vijayanagar',5,24,44,14,34,5),
('sg','vijayanagar',6,25,45,15,35,6),
('sg','vijayanagar',7,26,46,16,36,7),
('sg','vijayanagar',8,27,47,17,37,8),
('sg','vijayanagar',9,28,48,18,38,9),
('sg','vijayanagar',10,29,49,19,39,10);
select * from studycarecenter;

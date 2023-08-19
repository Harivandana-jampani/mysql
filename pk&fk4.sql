#dcs
create  table department (
dept_id int primary key auto_increment,
deptname varchar (100),
address varchar (100));
insert  into department (deptname,address)values
('ece','ongole'),
('ece1','ongole'),
('ece2','ongole');
select * from department;
create table canteen(
can_id int primary key auto_increment,
canname varchar(100),
fooditems varchar(100),
orders varchar(100));
insert into canteen (canname,fooditems,orders)values
('hari','coke',10),
('hari1','sprite',10),
('hari2','maaza',10);
select * from canteen;
create table employee (
emp_id int primary key auto_increment,
empname varchar(100),
mobileno bigint,
emailid varchar (100),
salary bigint,
dept_id int,
can_id int,
foreign key (dept_id) references department (dept_id),
foreign key (can_id) references canteen (can_id));
select * from employee;
insert into employee(dept_id,can_id,empname,mobileno,emailid,salary)
values
(100,10,'vandhu',8639062400,'vandhu@gmail.com',100000),
(200,11,'vandhu',8639062400,'vandhu@gmail.com',100000),
(300,12,'vandhu',8639062400,'vandhu@gmail.com',100000);
select *  from employee;

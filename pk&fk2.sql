# college and university location
insert into location (loc_name,address)values
('ongole','ap'),
('ongole','ap'),
('ongole','ap');
select * from location;
create table university (
uni_id int primary key auto_increment,
uni_name varchar(100),
email_id varchar(100),
mobileno bigint,
address varchar(100),
loc_id int,
clg_id int,
foreign key (clg_id) references college (clg_id),
foreign key (loc_id) references location (loc_id));
select * from university;
insert into university (clg_id,loc_id,uni_name,email_id,mobileno,address)values
(10,100,'rise','rise@gmail.com','8639062400','vallur'),
(11,101,'rise','rise@gmail.com','8639062400','vallur'),
(12,102,'rise','rise@gmail.com','8639062400','vallur');
select * from university;


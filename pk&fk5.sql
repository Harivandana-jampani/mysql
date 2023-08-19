#hgt
create table sales(
saleid int primary key auto_increment,
productname varchar(100));
insert into sales(productname) values
('mug'),('bag'),('box');
select * from sales;
create table products (
p_id int primary key auto_increment,
pname  (100),
price mediumint);varchar
insert into products (pname,price)values
('bottle','20'),
('brush','10'),
('paste',30);
select * from products;
create table orders(
o_id int primary key auto_increment,
p_id int,
saleid int,
username varchar(10),
mobileno bigint,
emailid varchar(100),
foreign key (p_id)references products(p_id),
foreign key (saleid)references sales (saleid));
insert into orders(p_id,saleid,username,mobileno,emailid)values
(1,10,'vandhu',8639062400,'vandhu@gmail.com'),
(2,11,'vandhu',8639062400,'vandhu@gmail.com'),
(3,12,'vandhu',8639062400,'vandhu@gmail.com');
select * from orders;
drop table sales;
drop table orders;
drop table products;

-------------------------------------------------------------
create table products(product_id int primary key auto_increment,
name varchar(50),
price decimal(10,2),
rating decimal(2,1));

insert into products(product_id,name,price,rating) values (10, 'headphone', 5000.55, 3.7),
(20,'pendrive', 600.65,4.8);

create table orders(orders_id int primary key auto_increment,
product_id int,
price decimal(10,2),
rating decimal(2,1),
foreign key(product_id) references products(product_id));

insert into orders(product_id,price,rating) values (20, 6700.55, 4.7),
(10, 450.65,3.8);


create table sales(orders_id int,
product_id int,
price decimal(10,2),
rating decimal(2,1),
primary key(orders_id,product_id),
foreign key(product_id) references products(product_id),
foreign key(orders_id) references orders(orders_id));

select * from orders;
select * from products;

insert into sales( orders_id,product_id,price,rating) values (1,20, 6700.55, 4.7),
(2,10, 450.65,3.8);
select * from sales;


# customers and accounts
create table customers(
customer_id int primary key auto_increment,
customername varchar(100),
mobileno varchar(100),
emailid varchar(100),
address varchar (100));
insert into customers (customername,mobileno,emailid,address)values
('vandana',8639062400,'vandhu@gamil.com','attiguppe'),
('harivandana',8639062400,'vandhu@gamil.com','attiguppe'),
('vandhu',8639062400,'vandhu@gamil.com','attiguppe');
select * from customers;
create table accounts(
accountno int  primary key auto_increment,
accountname varchar(100),
amount decimal(5,2),
customer_id int,
address varchar(200),
foreign key (customer_id) references customers(customer_id));
select * from accounts;
insert into accounts (customer_id,accountname,amount,address)values
(1,'vandana.j',522.0,'vijayanagar'),
(2,'kavya',522.0,'vijayanagar'),
(3,'vandana.t',522.0,'vijayanagar');
select * from accounts;
create table Customer(
cid char(9),
name varchar(20),
address varchar(80),
primary key(cid));

create table Orders(
oid char(9),
order_date DATE,
cid char(9),
primary key(oid),
foreign key (cid) references Customer(cid));

create table Order_book(
oid char(9),
isbn char(10),
no_of_copy INT,
primary key(oid,isbn),
foreign key (oid) references Orders(oid), 
foreign key(isbn) references Book(isbn));

create table Publisher(
pid char(10),
name varchar(30),
address varchar(80),
phone char(10),
primary key(pid));

create table Book(
isbn char(10),
title varchar(100),
btype varchar(15),
price DECIMAL,
primary key(isbn),
foreign key(pid) references Publisher(pid));

create table Author(
aid char(4),
fname varchar(15),
lname varchar(15),
primary key(aid));

create table Written_by(
isbn char(10),
aid char(4),
primary key(isbn,aid),
foreign key(isbn) references Book(isbn),
foreign key(aid) references Author(aid));

create table Editor(
eid char(4),
fname varchar(15),
lname varchar(15),
primary key(eid));

create table Edited_by(
eid char(4),
isbn char(10),
primary key(eid,isbn),
foreign key(isbn) references Book(isbn),
foreign key(eid) references Editor(eid));
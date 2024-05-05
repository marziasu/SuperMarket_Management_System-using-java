create database supermarketdb;
use supermarketdb;
create table categories
(
	cat_id int not null auto_increment primary key,
    cat_name varchar(20),
    cat_des varchar(255)
);

create table product(
	prod_id int not null auto_increment primary key,
    Name varchar(50),
    quantity int,
    cost int,
    Category varchar(20),
    Total int,
    Description varchar(255)
);

create table seller(
	ID int not null auto_increment primary key,
    NAME varchar(50),
    ADDRESS varchar(255),
    MOBILE_NO varchar(16),
    EMAIL varchar(50),
    GENDER varchar(10),
    PASSWORD blob
);

create table ADMIN(
	ID int not null auto_increment primary key,
    NAME varchar(50),
    PASSWORD blob
);

insert into ADMIN (NAME, PASSWORD)
values ('marzia', aes_encrypt(123,'secretKey'));

create table sellslist(
	SELLER_ID int,
    DATE date,
    TOTAL int
);
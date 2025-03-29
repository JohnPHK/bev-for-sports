drop database if exists bev4sports;

create database bev4sports;

use bev4sports;


-- create tables
create table products(
    product_id integer primary key, 
    product_name varchar(50), 
    image_path varchar(100));

create table users(
    username varchar(50) primary key not null,
    password varchar(50),
    first_name varchar(50), 
    last_name varchar(50),
    age integer,
    activity varchar(100));
 
create table orders(
    order_id int primary key auto_increment, 
    product_name varchar(50), 
    image_path varchar(50),
    order_date date, 
    user_name varchar(50),
FOREIGN KEY (user_name) REFERENCES users(username));


-- insert statements
insert into users values('admin','admin','admin','admin',23,'gym');
insert into users values('admin1','admin1','admin1','admin1',32,'Playing a sport');

insert into orders values(1,"bev_blueberry","images/bev_blueberry.jpg",'2017-03-07','admin');
insert into orders values(2,"bev_lemon","images/bev_lemon.jpg",'2017-06-01','admin');
insert into orders values(3,"bev_orange","images/bev_orange.jpg",'2017-10-23','admin');
insert into orders values(4,"bev_raspberry","images/bev_raspberry.jpg",'2016-12-02','admin');
insert into orders values(5,"bev_raspberry","images/bev_raspberry.jpg",'2015-07-15','admin');
 
insert into products values(1,"bev_blueberry","images/bev_blueberry.jpg");
insert into products values(2,"bev_lemon","images/bev_lemon.jpg");
insert into products values(3,"bev_orange","images/bev_orange.jpg");
insert into products values(4,"bev_raspberry","images/bev_raspberry.jpg");

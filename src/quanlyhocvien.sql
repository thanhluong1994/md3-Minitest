create database quanlyhocvien;
use quanlyhocvien;

create table Address(
    aID int not null auto_increment primary key ,
    address varchar(50)
);

create table Classes(
    cID int not null auto_increment primary key ,
    name varchar(50),
    language varchar(50),
    description varchar(255)
);

create table Student(
sID int not null auto_increment primary key ,
fullName varchar(50),
aID int not null ,
age int,
phone int unique ,
cID int not null ,
foreign key (aID) references Address(aID),
foreign key (cID) references Classes(cID)
);

create table Course(
    coID int not null auto_increment primary key ,
    name varchar(50),
    description varchar(255)
);

create table Point(
    pID int not null auto_increment primary key ,
    cOID int,
    sID int,
    point int,
    foreign key (cOID) references Course(cOID),
    foreign key (sID) references Student(sID)
);
DROP TABLE Point;

insert into Address values (1, 'HN');
insert into Address values (2, 'BG');
insert into Address values (3, 'ND');
insert into Address values (4, 'TH');
insert into Address values (5, 'QN');
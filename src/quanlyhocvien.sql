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

create table Student1(
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
    coID int,
    sID int,
    point int,
    foreign key (coID) references Course(coID) ,
    foreign key (sID) references Student(sID)
);


insert into Address values (1, 'HN');
insert into Address values (2, 'BG');
insert into Address values (3, 'ND');
insert into Address values (4, 'TH');
insert into Address values (5, 'QN');

insert into Classes values (1,'c1h1','Tieng viet','nhập học tháng 8');
insert into Classes values (2,'c1h2','Tieng trung','nhập học tháng 9');
insert into Classes values (3,'c1h3','Tieng nhat','nhập học tháng 10');
insert into Classes values (4,'c1h4','Tieng han','nhap hoc tháng 11');
insert into Classes values (5,'c1h5','Tieng phap','nhập học tháng 12');

insert into Student1 values (1,'Nguyen van A',1,26,'0987645242',1);
insert into Student1 values (2,'Nguyen van B',2,28,'0987645543',2);
insert into Student1 values (3,'Nguyen van C',3,29,'0987645553',3);
insert into Student1 values (4,'Nguyen van D',4,30,'0987645575',4);
insert into Student1 values (5,'Nguyen van E',5,31,'0987641567',5);
insert into Student1 values (6,'Nguyen van E',1,31,'0987641547',1);
insert into Student1 values (7,'Nguyen van E',2,32,'0987641976',2);
insert into Student1 values (8,'Nguyen van E',3,33,'0987641087',3);
insert into Student1 values (9,'Nguyen van E',4,34,'0987641856',4);
insert into Student1 values (10,'Nguyen van E',5,35,'0987641091',5);

insert into Course values (1,'Mien phi','khu vuc HN');
insert into Course values (2,'Co phi','khu vuc HN');

insert into Point values (1,1,1,8);
insert into Point values (2,2,2,9);
insert into Point values (3,1,3,10);
insert into Point values (4,1,1,11);
insert into Point values (5,2,2,10);
insert into Point values (6,2,3,10);
insert into Point values (7,1,3,10);
insert into Point values (8,1,2,10);
insert into Point values (9,2,1,10);
insert into Point values (10,2,1,10);
insert into Point values (11,1,2,10);
insert into Point values (12,1,3,10);
insert into Point values (13,2,3,10);
insert into Point values (14,2,2,10);
insert into Point values (17,1,1,10);

select * from Point,Student1,Address,Classes;
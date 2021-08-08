--------------UC1--------------
create database payroll_service;
-------------UC11---------------
create table employee
(
EmployeeId int identity(1,1) not null,
Name varchar(200) not null,
Gender char(1) not null,
PhoneNumber bigint,
Address varchar(150) not null
)
Insert into employee values
('sahithi','F',9494943537,'Mumbai'),('Ashwin','M',6748399848,'Bangalore'),
('Sivaangi','F',8989343478,'Chennai'),('Bill','M',7833829848,'Chennai'),
('Mark','M',8948373829,'Bangalore'),('Terissa','F',7878787878,'Mumbai');

create table payroll_details
(
Id int not null,
StartDate date not null,
Basic_pay float not null,
Deductions float,
Taxable_pay float,
Net_pay float not null,
Incometax float ,
);
Insert into payroll_details values
(1,'2000-11-13',24995,1000,1000,20000,200),(2,'2002-12-27',88838,1000,1000,20000,200),
(3,'2003-03-02',34563,1000,1000,20000,200),(4,'2018-01-01',38383,1000,1000,20000,200),
(5,'2020-08-09',56544,1000,1000,20000,200),(6,'2021-08-09',3000000,1000,1000,20000,200);

create table department
(
Id int identity(1,1) primary key,
Department varchar(150) not null
);
Insert into department values
('HR'),('Sales and Marketing');

create table employee_department
(
EmployeeId int,
Department varchar(150) not null,
);
Insert into employee_department values
(1,'HR'),(2,'Sales and Marketing'),(3,'Sales and Marketing'),(4,'HR'),(5,'HR'),(6,'Sales and Marketing');
--------------UC1--------------
create database payroll_service;
--------------UC2---------------
create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(200) not null,
salary float,
startDate date
);
--------------UC3---------------
insert into employee_payroll values('sahithi',24995,'2000-11-13'),('Ashwin',88838,'2002-12-27')
insert into employee_payroll (name,startDate,salary) values('Sivaangi' ,'2003-03-22',34563)
--------------UC4---------------
select * from employee_payroll;
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
--------------UC5---------------
insert into employee_payroll values('Bill',38383,'2018-01-01'),('Mark',56544,'2020-08-09')
select salary from employee_payroll where name='Bill'
select * from employee_payroll where startDate between CAST('2018-01-01' As date) and getdate()
--------------UC6---------------
alter table employee_payroll add gender char(1);
--Assign Gender to all entries-----
update employee_payroll  set gender ='M';
update employee_payroll set gender='F' where name='Ashwin' or name='sahithi';
--------------UC7---------------
select gender,SUM(salary) as totalSalary from employee_payroll group by gender;
select gender,AVG(salary) as averageSalary from employee_payroll group by gender;
select gender,MIN(salary) as totalSalary from employee_payroll group by gender;
select gender,MAX(salary) as totalSalary from employee_payroll group by gender;
select gender,COUNT(salary) as countOfPeople from employee_payroll group by gender;
---------------UC8-------------------
alter table employee_payroll add phonenumber bigint;
alter table employee_payroll add address varchar(150) default 'bangalore';
alter table employee_payroll add department varchar(150) not null default 'HR';

update employee_payroll set phonenumber=8989343478,address='Chennai',department='Sales and Marketing' where name='Kundana';
update employee_payroll set phonenumber=7833829848,address='Chennai',department='HR' where name='Bill';
update employee_payroll set phonenumber=8948373829,address='Bangalore',department='HR' where name='Mark';
update employee_payroll set phonenumber=6748399848,address='Bangalore',department='Sales and Marketing' where name='Arjun';
update employee_payroll set phonenumber=9494943537,address='Mumbai',department='HR' where name='Harini';

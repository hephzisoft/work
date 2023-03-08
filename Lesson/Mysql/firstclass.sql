create database FCMB;
use FCMB;

create table database_1(
emp_id int primary key auto_increment,
emp_name varchar(10),
age int,
gender char(1),
dob date,
salary float,
dept varchar(10)
);



select * from database_1;
insert into database_1 values
(102, 'anny','f','2006-09-20',20000,'marketing');
select * from database_1;


ALTER TABLE database_1 DROP gender;

ALTER TABLE database_1 ADD COLUMN gender VARCHAR(1);
UPDATE database_1 SET gender = 'M' WHERE emp_id = 101;

select * from database_1;

select sum(salary) as total_salary from  database_1;

SELECT MAX(salary) AS max_salary from database_1;
SELECT MIN(salary) AS min_salary from database_1;


alter table database_1 rename column salary to money;

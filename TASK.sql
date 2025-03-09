create table Employee_Details(employee_id serial primary key,firstname varchar(50),lastname varchar(50),email varchar(100),phonenumber varchar(15),hiredate date,salary decimal(10,2),department_id varchar(50),isactive boolean default true,job_title varchar(100));
insert into employee_Details(employee_id,firstname,lastname,email,phonenumber,hiredate,salary,department_id,isactive,jobtitle) values(6,'aditi','sharma',aditi.sharma@example.com','9876543210','1/6/2020',45000,1,'Yes','Software Engineer');

insert into Employee_Details(firstname,lastname,email,phonenumber,salary)
values
('Aditi','Sharma','aditi.sharma@example.com','9876543210','54000'),
('Rohan','Verma','rohan.verma@example.com','9123456789','50000'),
('Priya','Singh','priya.singh@example.com','9987654321','60000'),		
('Sameer','Patel','sameer.patel@example.com','9812345678','35000'),	
('Kavita','Mehta','kavita.mehta@example.com','9887654321','40000');

create table Employee_Details1
(EmployeeID int,
FirstName varchar,
LastName varchar,
Email varchar,
PhoneNumber int,
HireDate date,
Salary int,
DepartmentID int,
IsActive boolean,
JobTitle varchar);
copy employee_Details from'G:/Employee_Details.csv' delimiter ',' csv header;

update Employee_Details set salary = salary * 1.10 where isactive = false and departmentid = 0 and jottitle in ('hr manager','financial analyst','business analyst','data analyst');

select firstname as name,lastname as surname from employee_Details where salary between 30000 and 50000;

select * from Employee_Details where firstname like 'A%';

delete from Employee_Details where EmployeeID between 1 and 5;

alter table employee_Details rename to employee_details22'
alter table employee_details22 rename column firstname to name,
alter table employee_details22 rename lastname to surname;

alter table employee_details22 add column state varchar not null default 'unknown';
update emplyee_details22 set state = 'india' where isactive = ture;
update employee_details22 set state = 'USA' where isactive = false;




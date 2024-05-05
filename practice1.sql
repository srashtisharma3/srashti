use practice

create table Employees(id int primary key identity(1,1), firstname nvarchar(50), lastname nvarchar(50), gender nvarchar(50), salary int)

Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Mark', 'Hastings', 'Male', 60000)
Insert into Employees values ('Steve', 'Pound', 'Male', 45000)
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Philip', 'Hastings', 'Male', 45000)
Insert into Employees values ('Mary', 'Lambeth', 'Female', 30000)
Insert into Employees values ('Valarie', 'Vikings', 'Female', 35000)
Insert into Employees values ('John', 'Stanmore', 'Male', 80000)

select * from employees 

select * from employees order by salary desc

select max(salary) from employees  --- highest salary 

select max(salary) from employees where salary < (select max(salary) from employees )  -- 2nd highest

select distinct top 2 salary from Employees order by salary desc -- 2 highest

--- can find nth noumber salary

select * from employees 
Go 

select top 1 salary from 
( select distinct top 3 salary from Employees order by salary desc ) 
result order by salary  --- can find any no. salary

with result as 
(
	select salary, DENSE_RANK() over ( order by salary desc ) as denserank 
	from employees
)
select top 1 salary from result where result.denserank = 2

--- ROW_NUMBER doesn't work in duplicate data
with result as 
(
	select salary, ROW_NUMBER() over ( order by salary desc ) as rownumber 
	from employees
)
select top 1 salary from result where result.rownumber = 3



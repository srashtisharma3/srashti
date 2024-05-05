use practice

Create table Employee
(
 EmployeeID int primary key identity,
 EmployeeName nvarchar(50),
 ManagerID int foreign key references Employee(EmployeeID)
)
GO

Insert into Employee values ('John', NULL)
Insert into Employee values ('Mark', NULL)
Insert into Employee values ('Steve', NULL)
Insert into Employee values ('Tom', NULL)
Insert into Employee values ('Lara', NULL)
Insert into Employee values ('Simon', NULL)
Insert into Employee values ('David', NULL)
Insert into Employee values ('Ben', NULL)
Insert into Employee values ('Stacy', NULL)
Insert into Employee values ('Sam', NULL)
GO

Update Employee Set ManagerID = 8 Where EmployeeName IN ('Mark', 'Steve', 'Lara')
Update Employee Set ManagerID = 2 Where EmployeeName IN ('Stacy', 'Simon')
Update Employee Set ManagerID = 3 Where EmployeeName IN ('Tom')
Update Employee Set ManagerID = 5 Where EmployeeName IN ('John', 'Sam')
Update Employee Set ManagerID = 4 Where EmployeeName IN ('David')


select * from Employee

declare @ID int ;
set @ID = 7 ;

with employeeCTE as
(
	-- anchor member
	select EmployeeID, EmployeeName, ManagerID from Employee where EmployeeID = @ID

	union all
	-- recursive member
	select employee.EmployeeID, Employee.EmployeeName, Employee.ManagerID
	from Employee 
	join employeeCTE
	on Employee.EmployeeID = employeeCTE.ManagerID
)

-- select * from employeeCTE

select e1.EmployeeName, isnull(e2.EmployeeName, 'No boss') as manager
from employeeCTE e1
left join employeeCTE e2
on e1.ManagerID = e2.EmployeeID 




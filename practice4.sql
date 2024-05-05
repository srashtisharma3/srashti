use practice

Create table workers
(
     ID int primary key identity,
     FirstName nvarchar(50),
     LastName nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     HireDate DateTime
)
GO

Insert into workers values('Mark','Hastings','Male',60000,'5/10/2024')
Insert into workers values('Steve','Pound','Male',45000,'4/20/2024')
Insert into workers values('Ben','Hoskins','Male',70000,'4/5/2024')
Insert into workers values('Philip','Hastings','Male',45000,'3/11/2024')
Insert into workers values('Mary','Lambeth','Female',30000,'3/10/2024')
Insert into workers values('Valarie','Vikings','Female',35000,'2/9/2024')
Insert into workers values('John','Stanmore','Male',80000,'2/22/2024')
Insert into workers values('Able','Edward','Male',5000,'1/22/2024')
Insert into workers values('Emma','Nan','Female',5000,'1/14/2024')
Insert into workers values('Jd','Nosin','Male',6000,'1/10/2023')
Insert into workers values('Todd','Heir','Male',7000,'2/14/2023')
Insert into workers values('San','Hughes','Male',7000,'3/15/2023')
Insert into workers values('Nico','Night','Male',6500,'4/19/2023')
Insert into workers values('Martin','Jany','Male',5500,'5/23/2023')
Insert into workers values('Mathew','Mann','Male',4500,'6/23/2023')
Insert into workers values('Baker','Barn','Male',3500,'7/23/2023')
Insert into workers values('Mosin','Barn','Male',8500,'8/21/2023')
Insert into workers values('Rachel','Aril','Female',6500,'9/14/2023')
Insert into workers values('Pameela','Son','Female',4500,'10/14/2023')
Insert into workers values('Thomas','Cook','Male',3500,'11/14/2023')
Insert into workers values('Malik','Md','Male',6500,'12/14/2023')
Insert into workers values('Josh','Anderson','Male',4900,'5/1/2024')
Insert into workers values('Geek','Ging','Male',2600,'4/1/2024')
Insert into workers values('Sony','Sony','Male',2900,'4/30/2024')
Insert into workers values('Aziz','Sk','Male',3800,'3/1/2024')
Insert into workers values('Amit','Naru','Male',3100,'3/31/2024')
go

-- drop table workers
select * from workers

-- in months
SELECT *, DATEDIFF(MONTH, HireDate, GETDATE()) as diff
FROM workers
where DATEDIFF(MONTH, HireDate, GETDATE()) between 1 and 3
ORDER BY HireDate desc

-- in days
SELECT *, DATEDIFF(DAY, HireDate, GETDATE()) as diff
FROM workers
where DATEDIFF(DAY, HireDate, GETDATE()) between 1 and 30
ORDER BY HireDate desc

-- in years
SELECT *, DATEDIFF(YEAR, HireDate, GETDATE()) as diff
FROM workers
where DATEDIFF(YEAR, HireDate, GETDATE()) between 0 and 1
ORDER BY HireDate desc
	
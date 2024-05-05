use practice

Create table persons
(
 ID int,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
)
GO

Insert into persons values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into persons values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into persons values (1, 'Mark', 'Hastings', 'Male', 60000)
Insert into persons values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into persons values (2, 'Mary', 'Lambeth', 'Female', 30000)
Insert into persons values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into persons values (3, 'Ben', 'Hoskins', 'Male', 70000)
Insert into persons values (3, 'Ben', 'Hoskins', 'Male', 70000)

select * from persons 

with personsCTE as
(
	select *, ROW_NUMBER() over (partition by id order by id) as rownumber
	from persons 
)

-- select * from personsCTE where rownumber > 1 

-- delete from personsCTE where rownumber > 1 

select * from personsCTE

select * from persons 

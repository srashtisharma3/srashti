use practice

Create Table TestTable
(
 ID int identity primary key,
 Value nvarchar(50)
)
Go 

Insert into TestTable values ('123')
Insert into TestTable values ('ABC')
Insert into TestTable values ('DEF')
Insert into TestTable values ('901')
Insert into TestTable values ('JKL')

select * from TestTable where ISNUMERIC(Value) = 1
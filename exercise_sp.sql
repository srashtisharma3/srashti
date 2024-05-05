use practiceDB

select * from Employees

--create procedure employees_usp
--as
--begin
--	select * from Employees 
--end
--go
--exec employees_usp

alter procedure employees_usp
@fname varchar(50), @gender varchar(10)
as
begin
	select * from Employees
	select * from Employees where firstname = @fname and gender = @gender
end
go
--exec employees_usp @fname='Ben', @gender = 'male'
exec employees_usp 'Ben', 'male'


-- Output parameter and encryption

alter proc sum_sp
@n1 int = 1,
@n2 int = 1,
@sum int output
with encryption
AS
begin
	set @sum = @n1 + @n2
end
go
declare @res int 
exec sum_sp 5, 10, @res output
select @res

sp_helptext sum_sp
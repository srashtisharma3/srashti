use practiceDB

-- System defined function

select GETDATE()

select APP_NAME()

select CURRENT_USER

declare @name varchar(50) = 'sem'
select coalesce(@name, 'srashti')


-- USER defined function

alter function subtract(@n1 int, @n2 int)
returns int
as 
begin
	declare @res int
	set @res = @n1 - @n2
	return @res
end
go
select dbo.subtract(25, 11)
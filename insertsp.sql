
use mydatabase;

select * from tblproducts;

-- Creating sp to insert new product

create procedure usp_insertEmp
(@name varchar(30), @price int)
as
begin
	insert into tblproducts values( @name, @price)
end;

exec usp_insertEmp 'book', 500


-- Altering sp to insert new product

alter procedure usp_insertEmp
(@flag bit output,
@name varchar(30), @price int)
AS
BEGIN
	BEGIN TRANSACTION
		begin try
			insert into tblproducts values(@name, @price)
			set @flag = 1
			if @@TRANCOUNT > 0
				begin
					commit TRANSACTION;
				end
		end try
		begin catch
			if @@TRANCOUNT > 0
				begin
					rollback TRANSACTION;
				end
		    set @flag = 0
		end catch		
end;

-- executing sp using output parameter
declare @flag bit
exec usp_insertEmp @flag output, 'color-box', 250
IF @flag = 1
	PRINT 'Successfully executed.';
ELSE
	PRINT 'Error!!';

use mydatabase;

select * from tblproducts;

-- Deleting products using store procedure

create procedure usp_deleteEmp
@p_id int
AS
begin
	delete from tblproducts where pro_id = @p_id;
end;

exec usp_deleteEmp 7;


-- Alter products using store procedure

alter procedure usp_deleteEmp
(@flag bit output, @p_id int)
AS
begin
	begin transaction
		begin try
		delete from tblproducts where pro_id = @p_id;
		set @flag = 1;
		if @@TRANCOUNT > 0
			begin
				commit transaction;
			end
		end try
		begin catch
		if @@TRANCOUNT > 0
			begin 
				rollback transaction;
			end
		set @flag = 0;
		end catch
end;

declare @flag bit
exec usp_deleteEmp @flag output, 8
IF @flag = 1
	PRINT 'Successfull deleted.';
ELSE
	PRINT 'Error!!';



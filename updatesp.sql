use mydatabase;

select * from tblproducts;

-- Create sp for update existing products

create procedure usp_updatepdt
(@id int,
@name varchar(20),
@price int)
AS
begin
	update tblproducts set pro_name = @name, pro_price = @price where pro_id = @id;
end

exec usp_updatepdt 6, 'sharpner', 125;


-- Altering sp to update new product

alter procedure usp_updatepdt
(@flag bit output,
@id int,
@name varchar(20),
@price int)
AS
begin
	begin transaction
		begin try
			update tblproducts set pro_name = @name, pro_price = @price where pro_id = @id;
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
end


declare @flag bit
exec usp_updatepdt @flag output, 5, 'box', 325;
if @flag = 1
	print 'Updated!!';
else
	print 'Error!!!';
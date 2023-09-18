use mydatabase;

select * from tblproducts;

-- Encrypted stored procedure

alter procedure usp_GetAllProducts
(@id int)
with encryption
as 
begin
	select * from tblproducts where pro_id = @id;
end

execute usp_GetAllProducts 1;

execute sp_helptext usp_GetAllProducts;

-- Rename s p --> sp_rename

exec sp_rename 'usp_GetAllProducts', 'usp_getProducts';

exec usp_getProducts 1;
-- Stored procedures

use mydatabase;

create table tblproducts(
pro_id int primary key identity,
pro_name varchar(20),
pro_price int 
);

insert into tblproducts(pro_name, pro_price)
 values('pen', 50), ('pencil', 50),  ('eraser', 35), ('scale', 70);

 select * from tblproducts;

 -- Creating store procedure
 CREATE PROCEDURE usp_GetAllProducts
 AS
	SELECT * FROM tblproducts
 GO;

-- execution of sp
execute usp_GetAllProducts;
-- or
exec usp_GetAllProducts;
-- or
usp_GetAllProducts;


-- creating sp with IN parameter

create procedure usp_GetProductById
(@pro_id int)
as
begin
	select * from tblproducts where pro_id = @pro_id
end;

exec usp_GetProductById 3;


-- creating sp with output parameters

create procedure usp_productCount
(@empCt int output)
as
begin
	select @empCt = COUNT(*) from tblproducts;
end;

declare @totalEmp int
exec usp_productCount @totalEmp output
PRINT @totalEmp

-- drop procedure
drop procedure usp_productCount


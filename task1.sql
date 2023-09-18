
use mydatabase;

select * from tblemployee;

ALTER TABLE dbo.tblemployee 
	ADD	emp_status tinyint NULL;

update tblemployee set emp_status = 1 where emp_id = 6;

declare @status tinyint, @result varchar(20)
set @status = (select emp_status from tblemployee where emp_id = 3)
print @status;
-- set @status = 0
set @result = case
	when @status = 1 then 'Active'
	when @status = 0 then 'Deactive'
	end
PRINT @result;

------------ OR ----------

declare @status tinyint
set @status = (select emp_status from tblemployee where emp_id = 2)
print @status;
if(@status = 1)
	begin 
		print 'Active';
	end
else 
		print 'deactive';


select emp_id as Id, emp_fname as Name,
	case	
		when emp_status = 1 then 'active'
		else 'deactive'
	end as Status
from tblemployee;


select
	case	
		when emp_status = 1 then 'active'
		else 'deactive'
	end as Status,
	count(*) as Total
from dbo.tblemployee group by emp_status;


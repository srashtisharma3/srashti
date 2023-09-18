
-- Creating INSTEAD OF trigger

use mydatabase;

alter trigger trgInsteadofInsert on tblempsalary
INSTEAD OF insert
as
declare 
@empid int, 
@empname varchar(50), 
@empsal int, 
@action varchar(50)
select @empid = i.empid from inserted i;
select @empname = i.empname  from inserted i;
select @empsal = i.empsal from inserted i;
set @action = 'INSERT'
begin
	begin transaction
	set NOCOUNT ON
		if (@empsal <= 150000)
			begin
				raiserror('Cannot add salary <= 150000', 16, 1)
				rollback;
			end
		else
			begin
				insert into tblemptrigger(id, name, salary, action, timestamp)
				values(@empid, @empname, @empsal, @action,GETDATE()
				)
				commit;
				print 'Trigger created.'
			end
end

insert into tblempsalary values (1002, 'kinnu sharma', 240000);

select * from tblempsalary;
select * from tblemptrigger;


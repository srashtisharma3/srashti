use practiceDB

select * from Employees

CREATE TRIGGER dbo.trg_AfterEmp 
ON dbo.Employees
AFTER INSERT
AS
begin
	declare @emp_sal int;

	select @emp_sal = i.salary from inserted i;

	if @emp_sal <= 30000
		begin
			print 'Not eligible: salary is less than 30k ';
			rollback;
		end
	else
		begin
			print 'Record successful!!';
		end
end

insert into Employees(firstname, lastname, gender, salary)
values('sem', 'jen', 'female', 2500)



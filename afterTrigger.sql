-- creating AFTER trigger 

use mydatabase;

--table 1
create table tblempsalary ( empid int primary key, empname varchar(50), empsal int);

select * from tblempsalary;

insert into tblempsalary values (1001, 'simmy sh', 200000), (1002, 'kinnu sharma', 250000), 
(1003, 'srashti', 300000), (1004, 'shivi verma', 150000);

--table 2
create table tblemptrigger ( trgid int identity(1, 1), id int, name varchar(50), salary int, action varchar(50), timestamp datetime);

select * from tblemptrigger;
-- drop table tblemptrigger;

-- creating trigger
create trigger trgAfterInsert on tblempsalary
for insert
as
declare @empid int, @empname varchar(50), @empsal int, @action varchar(50)
select @empid = i.empid from inserted i;
select @empname = i.empname  from inserted i;
select @empsal = i.empsal from inserted i;
set @action = 'INSERT'
insert into tblemptrigger(id, name, salary, action, timestamp)
values(@empid, @empname, @empsal, @action,GETDATE()
)
print 'Trigger created.'

insert into tblempsalary values (1005, 'simran', 220000);

select * from tblempsalary;
select * from tblemptrigger;


-- Update after trigger

alter trigger trgAfterUpdate on tblempsalary
for update
as
declare
@empid int, 
@empname varchar(50), 
@empsal int, 
@action varchar(50)
select @empid = i.empid from inserted i;
select @empname = i.empname  from inserted i;
select @empsal = i.empsal from inserted i;
set @action = 'UPDATE'
IF UPDATE(empsal)
	insert into tblemptrigger(id, name, salary, action, timestamp)
	values(@empid, @empname, @empsal, @action, GETDATE()
	)
print 'Trigger updated.'

update tblempsalary set empsal = 270000 where empid = 1003;

select * from tblempsalary;
select * from tblemptrigger;


-- Delete after trigger

create trigger trgAfterDelete on tblempsalary
for delete
as
declare
@empid int, 
@empname varchar(50), 
@empsal int, 
@action varchar(50)
select @empid = i.empid from deleted i;
select @empname = i.empname  from deleted i;
select @empsal = i.empsal from deleted i;
set @action = 'DELETE'
	insert into tblemptrigger(id, name, salary, action, timestamp)
	values(@empid, @empname, @empsal, @action, GETDATE()
	)
print 'Trigger deleted.'

delete from tblempsalary where empid = 1002;

select * from tblempsalary;
select * from tblemptrigger;
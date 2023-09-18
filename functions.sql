use mydatabase;

select * from tblproducts;

select * from tblemployee;

-- Functions
-- 1. system defind func

-- a. system defined scalar func

select upper(pr_name) as Name from tblperson;
select lower(pr_name) from tblperson;
select abs(pr_age) from tblperson;


-- b. system defined aggregate func

select max(pr_age) as 'Maximum age' from tblperson;
select min(pr_age) as 'Minimum age' from tblperson;
select avg(pr_age) as 'Average age'from tblperson;


-- 2. user defined func

-- a. user defined scalar func

create function tax(@price int)
returns float
as
begin
	return (@price * 0.03)
end;

select pro_name as Name, pro_price as Price, dbo.tax(pro_price) as Tax, pro_price+dbo.tax(pro_price) as 'Total Price' from tblproducts;

select pro_name as Name, pro_price as Price, dbo.tax(pro_price) as Tax, pro_price+dbo.tax(pro_price) as 'Total Price' from tblproducts 
where dbo.tax(pro_price) > 3;

-- drop function tax;

alter function fullname(@fname varchar(20), 
@lname varchar(20))
returns varchar(50)
as
begin
	return (select @fname + ' ' + @lname)
end;

select dbo.fullname(emp_fname, emp_lname, 'Trainee') as Fullname from tblemployee where ;

select dbo.fullname('kinnu', 'sharma') as Fullname;


-- b. user defined table valued func

-- inline statement
create function getEmp()
returns table
as 
	return select * from tblemployee;
	
select emp_fname, emp_mob from dbo.getEmp();

-- Multiline statement

alter function getMultiEmp()
returns @emp table
(emp_id int, 
 emp_fname varchar(20),
 emp_mob int
)
as
begin
	insert into @emp select em.emp_id, em.emp_fname, em.emp_mob from tblemployee em;
	update @emp set emp_mob = 986585656 where emp_id = 4;
	return;
end;


select * from dbo.getMultiEmp();
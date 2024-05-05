use practiceDB

--- to select tables from database
SELECT TABLE_NAME 
FROM [practiceDB].INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'


select * from Employees

-- evevn, odd order
SELECT id, firstname, salary
FROM Employees
WHERE id % 2 != 0;


-- find duplicates
with res
as 
(
	select id, 
        firstname, 
        lastname, 
        gender, 
		row_number() over (partition by firstname, lastname, gender order by id) as rn from Employees
)

select * from res where rn > 1
-- delete from res where rn > 1
-- OR
select firstname, count(*) from Employees group by firstname having count(*) > 1


-- pattern matching by LIKE

select * from Employees where firstname like 'M%'
select * from Employees where firstname like '%M'
select * from Employees where firstname like '%M%'
select * from Employees where firstname not like '%M%'
select * from Employees where firstname like '____' -- 4 letters
select * from Employees where firstname like 'J%N'
select * from Employees where firstname like 'ST%'
select * from Employees where firstname like '_T_V%'
select * from Employees where firstname like '%AA%'



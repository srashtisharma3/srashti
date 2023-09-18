-- Temporary table
-- 1. Local tt
-- #temp_name


use mydatabase

create table #tblEmpDetails (
el_id int identity(10, 3),
el_name varchar(20) not null,
el_mob varchar(10)
)


--insert into #tblEmpDetails (el_name, el_mob) 
--values('sem', '97865465'), ('kinnu', '86455648'), ('kani', '7887465')

select * from #tblEmp
select emp_id, emp_fname, emp_mob 
into #tblEmp 
from 
tblemployee

select * 
into #tbldata
from #tblEmp

select * from #tbldata


-- 2. Global tt
-- ##temptable_name

create table ##tblEmpDetails (
el_id int identity(10, 3),
el_name varchar(20) not null,
el_mob varchar(10)
)

insert into ##tblEmpDetails (el_name, el_mob) 
values('sem', '97865465'), ('kinnu', '86455648'), ('kani', '7887465')

select * from ##tblEmpDetails

-- Table variable >> save in memory
declare @tblEmpDetail table
(
el_id int identity(10, 3),
el_name varchar(20) not null,
el_mob varchar(10)
)

insert into @tblEmpDetail (el_name, el_mob) 
values('sem', '97865465'), ('kinnu', '86455648'), ('kani', '7887465')

select * from @tblEmpDetail
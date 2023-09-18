use mydatabase;

-- table 1
create table tblStudentResult (std_id int primary key identity(1, 1) not null, 
st_name varchar(50) not null, st_city varchar(50), st_mob varchar(20), st_exam_id int
)
-- drop table tblStudentResult

insert into tblStudentResult (st_name, st_city, st_mob, st_exam_id)
values ('simmy', 'jaipur', 9518475256, 4), ('kinnu', 'kota', 9519543127, 3), 
('shivi', 'jaipur', 9518475269, 1), ('ria', 'agra', 9518474141, 2), ('ana', 'delhi', 4586875256, 5)

-- table 2
create table tblExamSheet (std_id int identity(1, 1) not null, 
hindi int, english int, maths int, science int, sst int, total int
)
--alter table tblExamSheet drop column total;

insert into tblExamSheet ( hindi, english, maths, science, sst) 
values(29, 33, 58, 64, 40), (36, 34, 49, 59, 45), (56, 58, 36, 65, 67), (68, 65, 75, 77, 40), (49, 34, 65, 45, 75);

select * from tblStudentResult;
select * from tblExamSheet;

select std.std_id as Id, std.st_name as Name, (((hindi + english + maths + science + sst)*100)/500) as Percentage,
	case
		when (((hindi + english + maths + science + sst)*100)/500) <= 100 and (((hindi + english + maths + science + sst)*100)/500) >= 70 
			then '1st division'
		when (((hindi + english + maths + science + sst)*100)/500) < 70 and (((hindi + english + maths + science + sst)*100)/500) >= 50 
			then '2nd division'
		when (((hindi + english + maths + science + sst)*100)/500) < 50 and (((hindi + english + maths + science + sst)*100)/500) >= 35 
			then '3rd division'
		else 'Failed'
	end	as Result
from tblExamSheet ex
inner join tblStudentResult std on ex.std_id = std.st_exam_id;
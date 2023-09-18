create table tblClientContract(
cl_id int identity(10,2) primary key,
cl_name varchar(20) not null,
cl_city varchar(20),
cl_code int
);

select cl_name, cl_city, cl_code from tblClient
union all
select cl_name, cl_city, cl_code from tblClientContract

insert into tblClientContract (cl_name, cl_city, cl_code) 
select 'ram', 'ajmer', 85
union all
select 'sunny', 'jaipur', 65
union all
select 'kani', 'kota', 55 

-- to check another db details
select * from mydatabase.dbo.tblcustomer



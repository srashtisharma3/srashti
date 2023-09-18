
-- parent table
create table tbldepartment (dept_id int primary key, dept_name varchar(30) not null
) 

-- child table
create table tblstudent ( std_id int primary key identity(1, 1), std_name varchar(30) not null,  
		std_rollno varchar(20) unique, std_des int foreign key references tbldepartment(dept_id)
)
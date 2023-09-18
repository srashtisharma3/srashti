
-- constraints 

use mydatabase;

create table tblperson ( pr_id int primary key identity(0, 1), 
  pr_name varchar(30) not null,  
  pr_mob varchar(20) unique,
  pr_country varchar(20) default 'India',
  pr_age int check (pr_age >= 18)
)

insert into tblperson(pr_name, pr_mob, pr_country, pr_age) 
 values('kp',  8965986521, 'usa', 32)

select * from tblperson;


-- To remove rows 
-- truncate table tblperson;


--To drop column
ALTER TABLE tblperson
DROP COLUMN column_name;
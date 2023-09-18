
-- insert query
insert into tbldepartment(dept_id, dept_name) 
 values(1, 'developer')
 insert into tbldepartment(dept_id, dept_name) 
 values(2, 'manager')
 insert into tbldepartment(dept_id, dept_name) 
 values(3, 'assistant')
 insert into tbldepartment(dept_id, dept_name) 
 values(4, 'assistant')


 update tbldepartment set dept_name = 'sr. developer'
  where dept_id = 4 


 -- select any data
 select * from tbldepartment

-- INNER JOIN

select emp.emp_fname as name, des.des_name as desgination from tblemployee emp
inner join tbldesignation des on des.des_id = emp.emp_des_id;


-- LEFT OUTER JOIN

select em.emp_fname as name, em.emp_dob as dob, de.des_name as desgination from tblemployee em
left join tbldesignation de on em.emp_des_id = de.des_id;


-- RIGHT OUTER JOIN

select em.emp_fname as name, de.des_name as desgination from tblemployee em
right join tbldesignation de on em.emp_des_id = de.des_id;


-- OUTER JOIN

select em.emp_fname as name, em.emp_dob as dob, de.des_name as desgination from tblemployee em
full outer join tbldesignation de on em.emp_des_id = de.des_id;


-- CROSS JOIN

select ep.emp_des_id, dg.des_id from tblemployee as ep
cross join tbldesignation as dg;


select * from tblemployee;
select * from tbldepartment;

-- can apply AND , OR operator

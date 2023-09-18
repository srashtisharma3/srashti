
USE mydatabase;

create table tblcustomer (
cust_id int not null, 
cust_name varchar(20)
);


insert into tblcustomer(cust_id, cust_name) 
 values(101, 'sem'), (102, 'vira'), (103, 'kani') , (104, 'ria'), (105, 'sunny'), (106, 'simmy') ;

 select * from tblcustomer;
 select * from tblcustomer where cust_id = 104;

 drop table tblcustomer;


 -- clustered index
 create clustered index idx_cust_id 
 on dbo.tblcustomer(cust_id);


 -- non-clustered index
 create index idx_cust_name
 on dbo.tblcustomer(cust_name);

  select * from tblcustomer where cust_name = 'simmy';


   -- drop index
   drop index idx_cust_name on tblcustomer;
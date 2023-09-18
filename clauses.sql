
-- order by
select pr_name as name, pr_age as age from tblperson 
 where pr_country = 'usa' order by pr_age desc;


 -- group by 

 select pr_country as country, count(pr_id) as total from tblperson 
  group by pr_country;
 

 -- having clause

 select pr_country as country, count(pr_id) as total from tblperson 
  group by pr_country having count(pr_id)>2 ;

select * from tblperson;
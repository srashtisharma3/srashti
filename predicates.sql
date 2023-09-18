
select * from tblperson;

-- distinct
select distinct pr_country as country from tblperson;

-- between...and
select pr_name as name, pr_age as age from tblperson where pr_age between 23 and 29;

-- IN
select * from tblperson where pr_country in ('uk', 'india');

-- LIKE
select * from tblperson where pr_country like 'i%' ;

-- IS NULL
select * from tblperson where pr_country is null ;


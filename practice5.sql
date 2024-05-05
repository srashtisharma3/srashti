use practice

Create Table Countries (
 Country nvarchar(50),
 City nvarchar(50)
)
GO

Insert into Countries values ('USA','New York')
Insert into Countries values ('USA','Houston')
Insert into Countries values ('USA','Dallas')
Insert into Countries values ('India','Hyderabad')
Insert into Countries values ('India','Bangalore')
Insert into Countries values ('India','New Delhi')
Insert into Countries values ('UK','London')
Insert into Countries values ('UK','Birmingham')
Insert into Countries values ('UK','Manchester')
Go

select * from Countries

select country, city,
ROW_NUMBER() over (partition by country order by country) as rownumber
from Countries

select country, city1, city2, city3 
from 
(
	select country, city,
	'city' + cast( ROW_NUMBER() over (partition by country order by country) as varchar(15)) as ColumnSequence
	from Countries
)temp 
PIVOT
(
	max(city)
	for ColumnSequence in (city1, city2, city3)
)piv
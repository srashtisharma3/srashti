
-- CONTROL FLOWS

-- IF...ELSE
DECLARE @X AS INT;
SET @X = 6;

IF @X%2=0
	BEGIN 
		PRINT 'X is even.';
	END
ELSE
	PRINT 'X is odd.';


-- WHILE
DECLARE @Y INT;
SET @Y=1;
WHILE @Y<=5
	BEGIN
		PRINT 'SRASHTI';
		SET @Y = @Y+1;
	END


-- CASE
declare @marks int, @res varchar(20);
set @marks=70;
set @res=case
		when @marks>=60 then 'A grade'
		when @marks>=30 then 'B grade'
		else 'C grade'
		end
print @res;


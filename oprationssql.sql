
-- DATA TYPES DECLARATIONS

--DECLARE @X AS INT, @name AS VARCHAR(20);   -- AS -> optional
--SET @X = 22;
--PRINT @X

--SET @name = 'SRASHTI' ;
--PRINT @name


-- OPERATIONS

--DECLARE @X INT, @Y INT, @Z INT
--SET @X = 10 
--SET @Y = 5
--SET @Z = @X + @Y 
--PRINT @Z


DECLARE @X VARCHAR(20), @Y VARCHAR(20), @Z VARCHAR(50);
SET @X = 'SRASHTI' ;
SET @Y = 'SHARMA' ;
SET @Z = @X + ' ' + @Y ;
PRINT @Z
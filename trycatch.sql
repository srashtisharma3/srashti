-- TRY...CATCH

BEGIN TRY
	DECLARE @X INT;
	SET @X = 5/0;
END TRY

BEGIN CATCH
	PRINT ERROR_MESSAGE()
	PRINT ERROR_LINE()
	PRINT ERROR_SEVERITY()
	PRINT ERROR_NUMBER()
	PRINT ERROR_PROCEDURE()
	PRINT ERROR_STATE()
END CATCH
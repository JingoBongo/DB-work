DECLARE @N1 INT, @N2 INT, @N3 INT;
DECLARE @MAI_MARE INT;
SET @N1 = 60 * RAND();
SET @N2 = 60 * RAND();
SET @N3 = 60 * RAND();

SET @MAI_MARE = @N1;
IF @MAI_MARE < @N2
	SET @MAI_MARE = @N2;
IF @MAI_MARE < @N3
	SET @MAI_MARE = @N3;

PRINT @N1;
PRINT @N2;
PRINT @N3;
PRINT 'Mai mare = ' + CAST(@MAI_MARE AS VARCHAR(2));
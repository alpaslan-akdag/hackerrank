declare @P  INT
SET @P = 20;

WHILE @P>0
BEGIN
    PRINT REPLICATE('* ',@P);
    SET @P = @P-1;
END;
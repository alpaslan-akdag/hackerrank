DECLARE @I INT 
DECLARE @CHECK BIT
SET @CHECK = 0
DECLARE @J INT 
SET @I=3
DECLARE @RESULT VARCHAR(1000)
SET @RESULT = '2&';
WHILE ( @I <= 1000)
    BEGIN
        SET @J=2
        SET @CHECK = 0
        WHILE (@J < @I  )
            BEGIN
                IF(@I % @J = 0)
                    BEGIN
                    BREAK
                    SET @J=@I
                    END
                ELSE 
                    BEGIN
                        SET @J  = @J  + 1
                        IF(@J = @I)
                            BEGIN
                                SET @CHECK = 1
                            END
                    END
                END
    IF (@CHECK = 1)
        BEGIN 
            SET @RESULT = @RESULT + CONVERT(VARCHAR,@I) + '&'
        END 
    SET @I = @I +1
    
END
 PRINT SUBSTRING(@RESULT,1,LEN(@RESULT)-1)

SELECT
    CASE
        WHEN ((ABS(A-B)<C) AND (A+B>C)) THEN
            CASE            
                WHEN A = B AND B=C THEN 'Equilateral'
                WHEN A = B OR B=C OR A=C THEN 'Isosceles'
                ELSE 'Scalene'
            END
        ELSE 'Not A Triangle'
    END 
FROM TRIANGLES;
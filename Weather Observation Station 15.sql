SELECT 
    TOP 1 FORMAT(LONG_W, 'N4') 
FROM 
    STATION 
WHERE 
    LAT_N < 137.12345 
ORDER BY LAT_N DESC;
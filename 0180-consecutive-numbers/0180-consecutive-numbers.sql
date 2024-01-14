SELECT DISTINCT
    z.num AS ConsecutiveNums 
FROM (
    SELECT
        id,
        LAG(num) OVER() AS previous_num,
        num, 
        LEAD(num) OVER() AS next_num
    FROM
        Logs
) AS z
WHERE
    z.num = z.previous_num
    AND z.num = z.next_num
    

SELECT
    CASE
        WHEN id MOD 2 = 0 THEN id - 1
        WHEN id = COUNT(*) OVER() THEN id
        ELSE id + 1
    END AS id,
    student
FROM 
    Seat
ORDER BY
    id
SELECT
    e.name AS name,
    b.bonus AS bonus
FROM
    Employee AS e
LEFT JOIN 
    Bonus AS b
    ON e.empId = b.empId
WHERE
    b.bonus IS NULL OR b.bonus < 1000
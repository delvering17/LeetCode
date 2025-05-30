SELECT
    e.employee_id
FROM
    Employees AS e
WHERE
    salary < 30000
    AND e.manager_id IS NOT NULL
    AND NOT EXISTS(
        SELECT 1 
        FROM Employees m
        WHERE e.manager_id = m.employee_id
    )
ORDER BY
    e.employee_id
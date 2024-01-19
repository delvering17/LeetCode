SELECT
    z.Department,
    z.Employee,
    z.Salary
FROM (
    SELECT
        DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS `rank`,
        e.name AS Employee,
        e.salary AS Salary,
        d.name AS Department
    FROM
        Employee AS e
    LEFT JOIN
        Department AS d
        ON e.departmentId = d.id
) AS z
WHERE
    z.`rank` = 1
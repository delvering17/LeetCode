SELECT
    z.Department,
    z.Employee,
    z.Salary
FROM (SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary,
    DENSE_RANK() OVER(PARTITION BY e.departmentId ORDER BY e.salary DESC) AS salary_rank
FROM
    Employee AS e
LEFT JOIN
    Department AS d
    ON e.departmentId = d.id
) AS z
WHERE
    z.salary_rank <= 3

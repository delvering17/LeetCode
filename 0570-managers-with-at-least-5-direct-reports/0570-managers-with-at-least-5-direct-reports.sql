
SELECT
    e.name
FROM
    Employee AS e
INNER JOIN (
    SELECT
        managerId
    FROM
        Employee
    WHERE
        managerId IS NOT NULL
    GROUP BY
        managerId
    HAVING
        COUNT(managerId) >= 5
) AS t
    ON e.id = t.managerId

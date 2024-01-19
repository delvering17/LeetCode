SELECT
    c.name AS Customers
FROM
    Customers As c
LEFT JOIN   
    Orders AS o
    ON c.id = o.customerId
WHERE
    o.id IS NULL
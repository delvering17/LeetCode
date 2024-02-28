SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM
    Person AS p
LEFT JOIN
    Address As a
    ON p.personId = a.personId
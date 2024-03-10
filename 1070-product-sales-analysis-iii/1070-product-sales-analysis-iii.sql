SELECT
    p.product_id,
    s.year AS first_year,
    s.quantity,
    s.price
FROM
    Product AS p
INNER JOIN
    Sales AS s ON p.product_id = s.product_id
WHERE
    (s.product_id, s.year) IN (
        SELECT
            product_id,
            MIN(year) AS min_year
        FROM
            Sales
        GROUP BY
            product_id
    )
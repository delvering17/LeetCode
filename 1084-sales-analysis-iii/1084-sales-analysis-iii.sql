SELECT 
    product_id, 
    product_name
FROM 
    Product AS p
WHERE
    EXISTS(
        SELECT 1
        FROM Sales AS s
        WHERE p.product_id = s.product_id
        GROUP BY
            s.product_id
        HAVING
        MIN(s.sale_date) >= '2019-01-01'
        AND MAX(s.sale_date) <= '2019-03-31'
    )
    
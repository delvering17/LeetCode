SELECT 
    product_id, 
    product_name
FROM 
    Product AS p
WHERE
    NOT EXISTS(
        SELECT 1
        FROM Sales AS s
        WHERE p.product_id = s.product_id
        AND s.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31'
    )
    AND EXISTS(
        SELECT 1
        FROM Sales AS s
        WHERE p.product_id = s.product_id
        AND s.sale_date BETWEEN '2019-01-01' AND '2019-03-31'
    )
    
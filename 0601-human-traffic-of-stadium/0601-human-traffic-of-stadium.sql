WITH t AS (
    SELECT
        *,
        id - ROW_NUMBER() OVER() AS num
    FROM
        Stadium
    WHERE
        people >= 100
)

SELECT
    t.id,
    t.visit_date,
    t.people
FROM
    t
WHERE
    t.num IN (
        SELECT
            t.num
        FROM
            t
        GROUP BY
            t.num
        HAVING
            COUNT(t.num) > 2
    )
ORDER BY
    t.visit_date
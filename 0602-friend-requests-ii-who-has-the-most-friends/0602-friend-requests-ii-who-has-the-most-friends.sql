WITH t AS (
    (SELECT requester_id AS id FROM RequestAccepted)
    UNION ALL
    (SELECT accepter_id AS id FROM RequestAccepted)
)

SELECT
    t.id,
    COUNT(t.id) AS num
FROM
    t
GROUP BY
    t.id
ORDER BY
    COUNT(t.id) DESC
LIMIT   1
# Write your MySQL query statement below
SELECT
    request_at AS 'Day',
    ROUND(cancel_count / total_count, 2) AS 'Cancellation Rate'
FROM (
    SELECT
        t.request_at AS request_at,
        SUM(CASE WHEN status != 'completed' THEN 1 ELSE 0 END) AS cancel_count,
        COUNT(*) AS total_count
    FROM 
        Trips AS t
    INNER JOIN Users AS uc ON t.client_id = uc.users_id
    INNER JOIN Users As ud ON t.driver_id = ud.users_id
    WHERE
        t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
        AND uc.banned != 'YES'
        AND ud.banned != 'YES'
    GROUP BY
        t.request_at
) t

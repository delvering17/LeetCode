SELECT
    activity_date AS day,
    COUNT(user_id) AS active_users
FROM (
    SELECT DISTINCT
        user_id,
        activity_date
    FROM
        Activity
    WHERE
        activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
) AS subquery
GROUP BY
    activity_date;
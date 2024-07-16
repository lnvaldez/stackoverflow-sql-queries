-- * 04
SELECT 
    u.DisplayName
FROM
    Users AS u
WHERE
    Id IN (
        SELECT
            c.UserId
        FROM
            Comments AS c
        GROUP BY 
            c.UserId
        HAVING 
            COUNT(*) > 100
    );
-- * 02
SELECT
    p.Title,
    u.DisplayName
FROM 
    Posts AS p
INNER JOIN 
    Users AS u ON p.OwnerUserId = u.Id
WHERE
    p.Title IS NOT NULL;
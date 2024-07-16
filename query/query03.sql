-- * 03
SELECT 
    u.DisplayName,
    AVG(p.Score) AS AverageScore
FROM 
    Users u
INNER JOIN 
    Posts p ON u.ID = p.OwnerUserId 
GROUP BY 
    u.ID,
    u.DisplayName 
ORDER BY 
    AverageScore DESC;
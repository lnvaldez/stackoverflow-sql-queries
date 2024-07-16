-- * 07
SELECT 
    u.DisplayName,
    COALESCE(p.TotalPosts, 0) AS TotalPosts,
    COALESCE(c.TotalComments, 0) AS TotalComments,
    COALESCE(b.TotalBadges, 0) AS TotalBadges
FROM 
    Users u
LEFT JOIN 
    (SELECT OwnerUserId, COUNT(DISTINCT Id) AS TotalPosts
     FROM Posts
     GROUP BY OwnerUserId) p ON u.Id = p.OwnerUserId
LEFT JOIN 
    (SELECT UserId, COUNT(DISTINCT Id) AS TotalComments
     FROM Comments
     GROUP BY UserId) c ON u.Id = c.UserId
LEFT JOIN 
    (SELECT UserId, COUNT(DISTINCT Id) AS TotalBadges
     FROM Badges
     GROUP BY UserId) b ON u.Id = b.UserId
ORDER BY 
    u.DisplayName;
-- * 01
SELECT 
    u.DisplayName,
    u.Location,
    u.Reputation
FROM 
    Users AS u
ORDER BY 
    Reputation DESC;

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

-- * 05
UPDATE 
    Users
SET 
    Location = 'Desconocido'
WHERE 
    Location IS NULL OR Location = '';

PRINT 
    'Actualizacion completada. Ubicaciones vacias cambiadas a "Desconocido".';

-- After
SELECT 
    u.DisplayName, 
    u.Location 
FROM 
    Users AS u
WHERE 
    u.Location = 'Desconocido';

-- * 06
DECLARE @RowsAffected INT;

DELETE FROM Comments 
WHERE
    UserId IN (
        SELECT Id 
        FROM Users 
        WHERE Reputation < 100
    );

SET @RowsAffected = @@ROWCOUNT;

PRINT 
	'Comments from ' + CAST(@RowsAffected AS VARCHAR(10)) + ' users with less than 100 reputation have been deleted.';

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

-- * 08
SELECT TOP 10 
    Title, 
    Score
FROM 
    Posts
ORDER BY 
    Score DESC;

-- * 09
SELECT TOP 5 
    Text, 
    CreationDate
FROM 
    Comments
ORDER BY 
    CreationDate DESC;

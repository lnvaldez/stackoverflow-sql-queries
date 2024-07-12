/*
SELECT TOP (200) [Id]
      ,[DisplayName]
      ,[Location]
      ,[Reputation]
  FROM [StackOverflow2010].[dbo].[Users]
  ORDER BY Reputation DESC
*/

/*
SELECT p.Title, u.DisplayName
FROM Posts p
INNER JOIN Users u ON p.OwnerUserId = u.Id 
WHERE p.OwnerUserId IS NOT NULL
*/

/*
SELECT u.DisplayName, AVG(p.Score) AS AverageScore
FROM Users u
INNER JOIN Posts p on u.ID = p.OwnerUserId
GROUP BY u.ID, u.DisplayName 
ORDER BY AverageScore DESC
*/

/*
SELECT DisplayName
FROM Users
WHERE Id IN (
    SELECT UserId
    FROM Comments
    GROUP BY UserId
    HAVING COUNT(*) > 100
)
*/

/*
-- View Current state
SELECT COUNT(*) AS EmptyLocations
FROM Users
WHERE Location IS NULL OR Location = ''

SELECT TOP 10 Id, DisplayName, Location
FROM Users
WHERE Location IS NULL OR Location = ''

-- Update
UPDATE Users
SET Location = 'Unknown'
WHERE Location IS NULL OR Location = ''

SELECT 'Update completed successfully. Empty locations have been changed to "Unknown".' AS Message

-- View state after update
SELECT COUNT(*) AS UnknownLocations
FROM Users
WHERE Location = 'Unknown'

SELECT TOP 10 Id, DisplayName, Location
FROM Users
WHERE Location = 'Unknown'
*/

/*
-- Count comments before deletion
SELECT COUNT(*) AS CommentsBeforeDeletion
FROM Comments
WHERE UserId IN (
    SELECT Id
    FROM Users
    WHERE Reputation < 100
)

-- Delete
DELETE FROM Comments
WHERE UserId IN (
    SELECT Id
    FROM Users
    WHERE Reputation < 100
)

PRINT 'Comments from users with less than 100 reputation have been deleted successfully.'

-- Count comments after deletion
SELECT COUNT(*) AS CommentsAfterDeletion
FROM Comments
WHERE UserId IN (
    SELECT Id
    FROM Users
    WHERE Reputation < 100
)
*/

/* !
SELECT TOP (200)
    u.Id,
    u.DisplayName,
    COUNT(DISTINCT p.Id) AS TotalPosts,
    COUNT(DISTINCT c.Id) AS TotalComments,
    COUNT(DISTINCT b.Id) AS TotalBadges
FROM 
    Users u
LEFT JOIN Posts p ON u.Id = p.OwnerUserId
LEFT JOIN Comments c ON u.Id = c.UserId
LEFT JOIN Badges b ON u.Id = b.UserId
GROUP BY 
    u.Id, u.DisplayName
ORDER BY 
    u.DisplayName
*/

/*
SELECT TOP 10 Title, Score
FROM Posts
ORDER BY Score DESC
*/

/*
SELECT TOP 5 Text, CreationDate
FROM Comments
ORDER BY CreationDate DESC
*/
-- * 01
SELECT 
    u.DisplayName,
    u.Location,
    u.Reputation
FROM 
    Users AS u
ORDER BY 
    Reputation DESC;

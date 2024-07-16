/*
★ Calcula el promedio de Score de los Posts por cada usuario y muestra el DisplayName
del usuario junto con el promedio de Score.
Para esto agrupa los posts por OwnerUserId, calcula el promedio de Score para cada
usuario y muestra el resultado junto con el nombre del usuario. Presenta los resultados
en una tabla mostrando las columnas DisplayName y el promedio de Score.
*/

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
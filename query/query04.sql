/*
★ Encuentra el DisplayName de los usuarios que han realizado más de 100 comentarios
en total. Para esto utiliza una subconsulta para calcular el total de comentarios por
usuario y luego filtra aquellos usuarios que hayan realizado más de 100 comentarios en
total. Presenta los resultados en una tabla mostrando el DisplayName de los usuarios.
*/

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
/*
★ Muestra los 5 comentarios más recientes de la tabla Comments. Ordena los comentarios
por fecha de creación de forma descendente y selecciona solo los 5 primeros. Presenta
los resultados en una tabla mostrando el Text del comentario y la fecha de creación.
*/

-- * 09
SELECT TOP 5 
    Text, 
    CreationDate
FROM 
    Comments
ORDER BY 
    CreationDate DESC;

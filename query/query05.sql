/*
★ Actualiza la columna Location de la tabla Users cambiando todas las ubicaciones vacías
por "Desconocido". Utiliza una consulta de actualización para cambiar las ubicaciones
vacías. Muestra un mensaje indicando que la actualización se realizó correctamente.
*/

-- * 05
UPDATE 
    Users
SET 
    Location = 'Desconocido'
WHERE 
    Location IS NULL OR Location = '';

PRINT 
    'Actualizacion completada. Ubicaciones vacias cambiadas a "Desconocido".';
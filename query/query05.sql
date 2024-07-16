-- * 05
UPDATE 
    Users
SET 
    Location = 'Desconocido'
WHERE 
    Location IS NULL OR Location = '';

PRINT 
    'Actualizacion completada. Ubicaciones vacias cambiadas a "Desconocido".';
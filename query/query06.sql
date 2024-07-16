/*
★ Elimina todos los comentarios realizados por usuarios con menos de 100 de reputación.
Utiliza una consulta de eliminación para eliminar todos los comentarios realizados y
muestra un mensaje indicando cuántos comentarios fueron eliminados.
*/

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
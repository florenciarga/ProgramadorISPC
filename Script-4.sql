-- 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
-- primero seleccione la tabla Dueno
-- luego inserte los datos en la tabla para realizar la actividad
-- y por ultimo modifique la direccion. 
SELECT * FROM Dueno d 
INSERT INTO Dueno (dni, Nombre, Apellido, Telefono, Direccion) VALUES ('28957346',  'Juan',  'Perez', '4789689',  'Belgrano 101');
SELECT * FROM Dueno d  WHERE Direccion  = 'Belgrano 101';
UPDATE Dueno SET Direccion = 'Libertad 123' WHERE Nombre = 'Juan';


-- 10. Vaciar la tabla historial y resetear el contador del campo ID.
-- la tabla historial que cree teenia 3 id 
-- primero selecciones la tabla historial y luego resetee los id.
SELECT * FROM Historial h 
DELETE FROM Historial h  WHERE historialId  IN ('1','2','3')
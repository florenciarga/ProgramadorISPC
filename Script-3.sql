-- 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
-- Primero seleccione la tabla historial
-- Luego inserte tres perros con sus respectivas caracteristicas a la tabla
-- Volvi a seleccionar la tabla para ver como quedo
-- Para realizar la actividad seleccione una perro del historial para modicarle su fecha de nacimiento lo ice atraves de si id
-- Por ultimo agrge la fecha nueva en este caso elegui 04/08/2021
-- El perro editado fue Fido 
SELECT * FROM Historial h ;
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('01', '12/12/2012', 'Puppy', 'Marron', '41.210');
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('02', '12/12/2012', 'Fido', 'Blanco', '50.860');
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('03', '12/12/2022', 'Rabu', 'Marron', '45.210');
SELECT * FROM Historial h ;
SELECT * FROM Historial h  WHERE historialId  = '2';
UPDATE Historial  SET fecha  = '04/08/2021' WHERE historialId  = '2';

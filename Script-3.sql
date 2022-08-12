SELECT * FROM Perro p 
SELECT * FROM Dueno d 
INSERT INTO Perro  (perroid , nombre , fecha_nac , sexo , dni_dueno) VALUES ('13','Puppy', '12/12/2012', 'Macho', ' 4789689');
SELECT * FROM Historial h 
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('01', '12/12/2012', 'Puppy', 'Marron', '41.210');
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('02', '12/12/2012', 'Fido', 'Blanco', '50.860');
SELECT * FROM Historial h 
WHERE fecha  = '2012';
SELECT * FROM Historial h  WHERE historialId  = '2012'
INSERT INTO Historial (Historialid, fecha, perro, descripcion, monto)VALUES ('03', '12/12/2022', 'Rabu', 'Marron', '45.210');
SELECT * FROM Historial h 
WHERE historialId  = '2022';
SELECT * FROM Historial h  WHERE historialId  = '2';
UPDATE Historial  SET fecha  = '04/08/2021' WHERE historialId  = '2'
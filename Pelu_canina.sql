use pelu_canina;
-- CREO LA TABLA DUEÑO
CREATE TABLE DUEÑO(
DNI_Dueño int primary key not null,
Nombre_Dueño varchar (50),
Apellido_Dueño varchar (50),
Telefono_Dueño bigint,
Direccion_Dueño varchar (50)
);
-- CREO LA TABLA PERRO
CREATE TABLE PERRO(
Id_Perro int primary key not null,
Nombre_Perro varchar (50),
Fec_Nac_Perro date null,
Sexo_Perro varchar (10),
DNI_Dueño_FK int,
foreign key(DNI_Dueño_FK) references DUEÑO(DNI_Dueño)
);
-- CREO LA TABLA HISTORIAL
CREATE TABLE HISTORIAL(
Id_Historial int primary key not null,
Fecha_Historial date null,
Descrip_Historial varchar (200),
Monto_Historial decimal (10,2),
Perro_Hisrorial_FK int,
foreign key (Perro_Hisrorial_FK) references PERRO(Id_Perro)
);

-- INSERTO VALORES A TABLA DUEÑO
INSERT INTO DUEÑO (DNI_Dueño, Nombre_Dueño, Apellido_Dueño, Telefono_Dueño, Direccion_Dueño)
VALUES
('25303108', 'Ana', 'Sotelo', '1130255522', 'Lima 255'),
('18673962', 'Juan', 'Palotes', '1145698700', 'Otawa 102'),
('38432098', 'Maria', 'Perinola', '1150244376', 'Lonja 567'),
('16078908', 'Jose', 'Peralta', '1123540978', 'Linch 1023');

-- INSERTO VALORES A TABLA PERRO
INSERT INTO PERRO (Id_Perro, Nombre_Perro, Fec_Nac_Perro, Sexo_Perro, DNI_Dueño_FK)
VALUES
('0001', 'Milo', '2021-12-10', 'Macho', '25303108'),
('0002', 'More', '2021-04-12', 'Hembra', '18673962'),
('0003', 'Deisy', '2019-01-30', 'Hembra', '38432098'),
('0004', 'Coco', '2020-05-09', 'Macho', '16078908');

-- INSERTO VALORES A LA TABLA HISTORIAL
INSERT INTO HISTORIAL (Id_Historial, Fecha_Historial, Descrip_Historial, Monto_Historial, Perro_Hisrorial_FK)
VALUES
('1001', '2022-01-10', 'Corte y lavado', '1500.00', '0004'),
('1002', '2022-02-21', 'Corte', '800.00', '0001'),
('1003', '2022-03-16', 'Lavado', '700.00', '0003'),
('1004', '2022-05-05', 'Corte y lavado', '1500.00', '0002');

-- INSERTO NUEVO PACIENTE A LA TABLA PERRO
INSERT INTO PERRO (Id_Perro, Nombre_Perro, Fec_Nac_Perro, Sexo_Perro, DNI_Dueño_FK)
VALUES ('0005', 'Bengi', '2022-02-28', 'Macho', '38432098');

INSERT INTO PERRO (Id_Perro, Nombre_Perro, Fec_Nac_Perro, Sexo_Perro, DNI_Dueño_FK)
VALUES ('0006', 'Glenda', '2021-07-11', 'Hembra', '16078908');

-- EJERCICIO 12: CONSULTO PERROS MACHOS NACIDOS ENTRE 2020 Y 2022
SELECT *
FROM PERRO
WHERE Fec_Nac_Perro BETWEEN '2020-01-01' AND '2022-12-31'
AND Sexo_Perro = 'Macho';


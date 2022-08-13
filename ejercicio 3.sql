create database peluqueria_canina;
use peluqueria_canina;

-- crear tabla: dueno

CREATE TABLE Dueno 
( 
DNI int primary key not null,
Nombre varchar(25),
Apellido varchar (25),
Telefono bigint,
Direccion varchar (50)
) ;

CREATE TABLE Perro
(
ID_Perro int primary key not null auto_increment,
Nombre varchar(25),
Fecha_Nac date,
Sexo varchar(25),
DNI_Dueno int not null,
index (DNI_Dueno),
foreign key (DNI_Dueno) references Dueno (DNI)
);

-- crear tabla: historial

CREATE table Historial
(
ID_Historial int primary key not null,
Fecha date,
Perro int,
Descripcion varchar(100),
Monto float,
index (Perro),
foreign key (Perro) references Perro (ID_Perro)
on delete cascade
);

-- insertar valores en la tabla: dueno

INSERT INTO Dueno (dni, nombre) values 
(40433499, "martin");
insert into dueno (dni, nombre) values 
(30306869, "juan");

-- insertar valores en la tabla: perro

insert into perro (id_perro, nombre, dni_dueno) values
(001, "firulais", 40433499);
insert into perro (id_perro, nombre, dni_dueno) values
(002, "negrito", 30306869);

-- insertar valores en la tabla: historial

insert into historial (id_historial, fecha, perro) values
(01, "1997-05-05", 001);
insert into historial (id_historial, fecha, perro) values
(02, "2012-06-06", 0002);

/* seleccionar la columna fecha de la tabla historial, ordenada
de forma ascendente, para comprobar mascotas que no se
 hayan atendido hace tiempo */


select fecha, perro from Historial order by fecha;

-- borrar un animal que ya no va a ser atendido

delete from perro where ID_Perro=001;

-- chequear si se borro el animal

select * from perro
CREATE TABLE Perro (
	perroId NUMERIC NOT NULL,
	nombre TEXT,
	fecha_nac INTEGER,
	sexo TEXT,
	dni_dueno INTEGER,
	CONSTRAINT Perro_PK PRIMARY KEY (perroId),
    CONSTRAINT Perro_fk FOREIGN KEY (dni_dueno)
);

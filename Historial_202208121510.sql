
CREATE TABLE Historial (
	historialId NUMERIC NOT NULL,
	fecha INTEGER,
	perro NUMERIC NOT NULL,
	descripcion INTEGER,
	monto NUMERIC,
	CONSTRAINT Historial_PK PRIMARY KEY (historialId),
    CONSTRAINT perro_fk FOREIGN KEY (perro) REFERENCES Perro (perroId),
);
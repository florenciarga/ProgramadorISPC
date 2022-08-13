CREATE TABLE Historial (
	historialId NUMERIC NOT NULL,
	fecha INTEGER,
	perro NUMERIC NOT NULL,
	descripcion INTEGER,
	monto NUMERIC,
	CONSTRAINT Historial_PK PRIMARY KEY (historialId),
    CONSTRAINT Historial_fk FOREIGN KEY (perro)
);

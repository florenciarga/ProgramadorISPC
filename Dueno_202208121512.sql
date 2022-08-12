
CREATE TABLE [Dueno]
(
    "dni" INTEGER NO NULL,
    [Nombre] NVARCHAR(50),
    [Apellido] NVARCHAR(50),
    [Telefono] NVARCHAR(20),
    [Direccion] NVARCHAR(50),

    CONSTRAINT [PK_Dueno] PRIMARY KEY  ("dni")
 );

CREATE INDEX Dueno_dniId_IDX ON Dueno (dni);
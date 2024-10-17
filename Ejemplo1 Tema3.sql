CREATE TABLE profesor (
    DNI VARCHAR2(9) NOT NULL,
    NOMBRE VARCHAR2(30) NOT NULL,
    AP1 VARCHAR2(50) NOT NULL,
    AP2 VARCHAR2(50) NULL,
    TIPO VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_profesor PRIMARY KEY (DNI);
)
CREATE TABLE asignatura(
    CODASIG NUMBER(3),
    NOMBRE VARCHAR2(30),
    NUMHORAS NUMBER(3),
    ---------------
    DNI_PROFESOR VARCHAR2(9),    
    --- FK Variable que he creado para referenciar datos de la tabla principal
    -----------------
    CONSTRAINT pk_CodAsig PRIMARY KEY(CODASIG),
    CONSTRAINT fk_asignatura FOREIGN KEY(DNI_PROFESOR),
    REFERENCES PROFESOR(DNI);
)

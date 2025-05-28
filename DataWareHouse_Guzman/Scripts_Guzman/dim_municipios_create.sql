-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.DIM_Municipios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DIM_Municipios (
		CodMpio int NOT NULL,
		CodDpto tinyint NOT NULL,	
		NomMpio nvarchar(30) NOT NULL,
		Latitud float NOT NULL,
		Longitud float NOT NULL,
		CONSTRAINT DIM_Municipios_PK PRIMARY KEY (CodMpio),
		CONSTRAINT DIM_Municipios_DIM_Departamentos_FK FOREIGN KEY (CodDpto) REFERENCES dbo.DIM_Departamentos(CodDpto)
	);
END;

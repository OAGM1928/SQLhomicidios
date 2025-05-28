-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.DIM_Trimestres', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DIM_Trimestres (
		Trimestre tinyint IDENTITY(1,1) NOT NULL,
		NomTrimestre nvarchar(15) NOT NULL,
		NomCortoTrimestre char(6) NOT NULL,
		CONSTRAINT DIM_Trimestres_PK PRIMARY KEY (Trimestre)
	);
END;

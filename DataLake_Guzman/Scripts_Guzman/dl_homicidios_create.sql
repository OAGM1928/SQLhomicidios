-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.DL_Homicidios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DL_Homicidios (
		FECHA_HECHO date NULL,
		COD_DEPTO tinyint NULL,
		DEPARTAMENTO nvarchar(60) NULL,
		COD_MUNI int NULL,
		MUNICIPIO nvarchar(30) NULL,
		ZONA nvarchar(10) NULL,
		SEXO nvarchar(20) NULL,
		CANTIDAD tinyint NULL
	);
END;

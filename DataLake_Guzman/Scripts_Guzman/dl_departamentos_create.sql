-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.DL_Departamentos', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DL_Departamentos (
		COD_DPTO tinyint NULL,
		NOM_DPTO nvarchar(60) NULL,
		LATITUD float NULL,
		LONGITUD float NULL,
		GeoDepartamento nvarchar(35) NULL
	);
END;

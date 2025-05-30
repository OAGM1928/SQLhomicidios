-- Crear la tabla 'usuarios' para almacenar la información básica de los usuarios registrados en el sistema.
-- Incluye ID único, nombre completo, correo electrónico y fecha de creación del registro.

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

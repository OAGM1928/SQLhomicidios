-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.FAC_Homicidios', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.FAC_Homicidios (
		IdHomicidio int NOT NULL,
		FechaHecho date NOT NULL,
		CodMpio int NOT NULL,
		IdZona tinyint NOT NULL,
		IdSexo tinyint NOT NULL,
		Cantidad tinyint NOT NULL,
		CONSTRAINT FAC_Homicidios_PK PRIMARY KEY (IdHomicidio),
		CONSTRAINT FAC_Homicidios_DIM_Fechas_FK FOREIGN KEY (FechaHecho) REFERENCES DataWareHouse.dbo.DIM_Fechas(FechaHecho),
		CONSTRAINT FAC_Homicidios_DIM_Municipios_FK FOREIGN KEY (CodMpio) REFERENCES DataWareHouse.dbo.DIM_Municipios(CodMpio),
		CONSTRAINT FAC_Homicidios_DIM_Sexos_FK FOREIGN KEY (IdSexo) REFERENCES DataWareHouse.dbo.DIM_Sexos(IdSexo),
		CONSTRAINT FAC_Homicidios_DIM_Zonas_FK FOREIGN KEY (IdZona) REFERENCES DataWareHouse.dbo.DIM_Zonas(IdZona)
	);
END;

-- Verificación previa a la creación de la tabla:
-- Se utiliza OBJECT_ID para comprobar si ya existe una tabla con el nombre especificado en el esquema correspondiente.
-- El parámetro 'U' indica que se está buscando un objeto de tipo "User Table".
-- Si OBJECT_ID devuelve NULL, significa que la tabla no existe y, por lo tanto, se procede a crearla con CREATE TABLE.

IF OBJECT_ID('dbo.DIM_Fechas', 'U') IS NULL
BEGIN
	CREATE TABLE dbo.DIM_Fechas (
		FechaHecho date NOT NULL,
		Annio int NOT NULL,
		Mes tinyint NOT NULL,
		Dia tinyint NOT NULL,
		DiaSemana tinyint NOT NULL,
		Semana tinyint NOT NULL,
		Trimestre tinyint NOT NULL,
		CONSTRAINT DIM_Fechas_PK PRIMARY KEY (FechaHecho),
		CONSTRAINT DIM_Fechas_DIM_Dias_Semana_FK FOREIGN KEY (DiaSemana) REFERENCES DataWareHouse.dbo.DIM_Dias_Semana(DiaSemana),
		CONSTRAINT DIM_Fechas_DIM_Meses_FK FOREIGN KEY (Mes) REFERENCES DataWareHouse.dbo.DIM_Meses(Mes),
		CONSTRAINT DIM_Fechas_DIM_Trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWareHouse.dbo.DIM_Trimestres(Trimestre)
	);
END;

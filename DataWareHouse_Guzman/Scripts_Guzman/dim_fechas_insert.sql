-- Inserción de datos:
-- Se utiliza la instrucción INSERT INTO para cargar registros en la tabla especificada.
-- Los valores pueden provenir de una fuente externa (como un archivo CSV) o de una consulta SELECT.
-- Asegura que los datos se inserten en el orden y formato definidos por la estructura de la tabla.


SET DATEFIRST 1;

INSERT INTO DataWareHouse.dbo.DIM_Fechas 
(FechaHecho, Annio, Mes, Dia, DiaSemana, Semana, Trimestre)
SELECT DISTINCT FECHA_HECHO AS FechaHecho
	, YEAR(FECHA_HECHO) AS Annio
	, MONTH(FECHA_HECHO) AS Mes
	, DAY(FECHA_HECHO) AS Dia
	, DATEPART(WEEKDAY, FECHA_HECHO) AS DiaSemana
	, DATEPART(WEEK, FECHA_HECHO) AS Semana
	, DATEPART(QUARTER, FECHA_HECHO) AS Trimestre
FROM dbo.DL_Homicidios
WHERE FECHA_HECHO IS NOT NULL

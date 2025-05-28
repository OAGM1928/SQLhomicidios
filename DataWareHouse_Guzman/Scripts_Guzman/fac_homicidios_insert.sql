-- Inserción de datos:
-- Se utiliza la instrucción INSERT INTO para cargar registros en la tabla especificada.
-- Los valores pueden provenir de una fuente externa (como un archivo CSV) o de una consulta SELECT.
-- Asegura que los datos se inserten en el orden y formato definidos por la estructura de la tabla.

INSERT INTO DataWareHouse.dbo.FAC_Homicidios 
(FechaHecho, CodMpio, IdZona, IdSexo, Cantidad)
SELECT FECHA_HECHO AS FechaHecho
	, COD_MUNI AS CodMpio
	, (SELECT IdZona FROM DataWareHouse.dbo.DIM_Zonas WHERE NomZona = H.ZONA) AS IdZona
	, (SELECT IdSexo FROM DataWareHouse.dbo.DIM_Sexos WHERE NomSexo = H.SEXO) AS IdSexo
	, CANTIDAD AS Cantidad
FROM DataLake.dbo.DL_Homicidios AS H

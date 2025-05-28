-- Inserción de datos:
-- Se utiliza la instrucción INSERT INTO para cargar registros en la tabla especificada.
-- Los valores pueden provenir de una fuente externa (como un archivo CSV) o de una consulta SELECT.
-- Asegura que los datos se inserten en el orden y formato definidos por la estructura de la tabla.

INSERT INTO DataWareHouse.dbo.DIM_Trimestres 
(NomTrimestre, NomCortoTrimestre)
VALUES
('Trimestre 1', 'TRIM 1'),
('Trimestre 2', 'TRIM 2'),
('Trimestre 3', 'TRIM 3'),
('Trimestre 4', 'TRIM 4')

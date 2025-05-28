-- Inserción de datos:
-- Se utiliza la instrucción INSERT INTO para cargar registros en la tabla especificada.
-- Los valores pueden provenir de una fuente externa (como un archivo CSV) o de una consulta SELECT.
-- Asegura que los datos se inserten en el orden y formato definidos por la estructura de la tabla.

INSERT INTO DataWareHouse.dbo.DIM_Dias_Semana
(NomDiaSemana, NomCortoDiaSemana)
VALUES
('Lunes', 'LUN'),
('Martes', 'MAR'),
('Miércoles', 'MIE'),
('Jueves', 'JUE'),
('Viernes', 'VIE'),
('Sábado', 'SAB'),
('Domingo', 'DOM')

# CONSULTAS DE AGRUPAMIENTO NOS PERMITE AGRUPAR FILAS#

SELECT COUNT(titulo) AS 'NUMERO DE POSTS', categoria_id FROM posts GROUP BY categoria_id;

# CONSULTAS DE AGRUPAMIENTO CON CONDICIONES #

SELECT COUNT(titulo) AS 'NUMERO DE POSTS', categoria_id FROM posts GROUP BY categoria_id HAVING COUNT(titulo) >= 4;

/*
FUNCIONES DE AGRUPAMIENTO:
AVG     Para sacar la media
COUNT   Contar el numero de elementos
MAX     Devolver el valor maximo del grupo
MIN     Devolver el valor minimo del grupo
SUM     Todas las expresiones del grupo
*/

SELECT AVG(id) AS 'MEDIA DE ENTRADAS' FROM posts;


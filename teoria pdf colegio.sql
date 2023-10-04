/*USE colegio;*/
/*select a.nombre, a.apellido from alumno a;*/

/*SELECT a.nombre, asig.nombre as asignatura,
n.calificacion
FROM alumno a
INNER JOIN nota n ON a.id =
n.alumno_id
INNER JOIN asignatura asig ON asig.id
= n.asignatura_id
ORDER BY apellido */

/*cualquier string que comience con = Ma% 
cualquier string que termine con = %Ma 
contiene = %Ma%
a%o = que comience con a y acabe por o
_a% = cualquier string que contenga a como segundo caracter, el símbolo _ es un comodín
SELECT columna FROM tabla WHERE columna LIKE %VALOR%; */

/*DELETE FROM labor_extra WHERE id = 1 */

/* eliminar los índices de x a y de una tabla 
DELETE FROM tabla_x WHERE id between 10 and 20;
DROP INDEX nombre_indice IN nombre_tabla; */

/*DISTINCT = modificador
SELECT + DISTINCT
SELECT pais FROM ALUMNO; (1 RES)
SELECT DISTINCT pais FROM ALUMNO; (TODOS) 
SELECT DISTINCT PAIS, CIUDAD, BARRIO, CALLE FROM alumno */


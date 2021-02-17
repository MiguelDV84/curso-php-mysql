SELECT email, fecha, CURDATE () AS 'FECHA ACTUAL' FROM usuarios;

SELECT email, DATEDIFF(fecha, CURDATE ()) AS 'FECHA ACTUAL' FROM usuarios;

SELECT email, DATEDIFF(fecha, CURDATE()) AS 'FECHA ACTUAL' FROM usuarios;

SELECT email, DAYNAME(fecha) AS 'FECHA ACTUAL' FROM usuarios;

SELECT email, DAYOFMONTH(fecha) AS 'FECHA ACTUAL' FROM usuarios;
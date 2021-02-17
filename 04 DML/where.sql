# CONSULTA CON UNA CONDICION #
SELECT * FROM usuarios WHERE email = 'admin@admin.es';

/*
OPERADORES DE COMPARACION
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre          between X and Y
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like

OPERADORES LOGICOS 
O       OR
Y       AND
NO      NOT

COMODINES PARA OPERADOR LIKE
Cualquier cantidad de caracteres  %
Un caracter desconocido:          _

*/

# EJEMPLOS DE CONSULTA #
# NOMBRES Y APELLIDOS QUE SE REGUISTRARON EN AÑO CONCRETO #

SELECT nombre,apellidos FROM usuarios WHERE YEAR(fecha) = 2018;

# NOMBRES Y APELLIDOS QUE NO SE REGUISTRARON EN AÑO CONCRETO O TIENE FECHA NULL #

SELECT nombre,apellidos FROM usuarios WHERE YEAR(fecha) != 2018 OR ISNULL(fecha);

# MOSTRAR EMAIL DE LA PERSONAS QUE TENGA APELLIDOS CON LA LETRA "A" Y LA CONTRASEÑA TENGA UN "1" #

SELECT email FROM usuarios WHERE apellidos LIKE '%a%' AND password LIKE '%1%';

# MOSTRAR TODOS LOS REGISTROS DE LA TABLA USUARIOS CUANDO LA FECHA SEA IMPAR/PAR #

SELECT * FROMO usuarios WHERE (YEAR (fecha)%2 = 0);       # PAR #

SELECT * FROMO usuarios WHERE (YEAR (fecha)%2 != 0);    # IMPARPAR #

# MOSTRAR TODOS LOS REGISTROS DE LA TABLA USUARIOS CUYO NOMBRE TENGA MAS DE 5 LETRAS Y QUE ADEMAS SE HAYAN REGISTRADO ANTES DE 2020 Y MOSTRAR EL NOMBRE EN MAYUSCULAS #

SELECT UPPER(nombre),apellidos FROM usuarios WHERE  LENGTH(nombre) > 5 AND YEAR (fecha) < 2020;




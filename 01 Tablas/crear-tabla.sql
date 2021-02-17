
/*
TIPOS DE DATOS
int(nº cifras)                      ENTERO
integer(nº cifras)                  ENTERO                (maximo 42949675295)
varchar (nª caracteres)             STRING / ALFANUMERICO (maximo 255)
char (nº caracteres)                STRING / ALFANUMERICO
float (nº cifras, nº decimales)     DECIMAL / COMA FLOTANTE
date, time, timastamp


// STRING MAS GRANDES
TEXT       65535 caracteres 
MEDIUMTEXT 16 millones de caracteres
LONGTEXT   16 billones de caracteres

// ENTEROS MAS GRANDES
MEDIUMINT
BIGINT

*/



/*
CREAR TABLA
*/

CREATE TABLE usuarios(
id          int(11) auto_increment not null,
nombre      varchar(100) not null,
apellidos   varchar(255) default 'Dato default',
email       varchar(100) not null,
password    varchar(255),
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);
# INSERTAR NUEVOS REGISTROS #
INSERT INTO usuarios VALUES(null, 'Miguel', 'Diaz', 'miguel@miguel.com','1234','2021-02-11');
INSERT INTO usuarios VALUES(null, 'Diego', 'Perez', 'diego@diego.com','4321','2021-02-10');
INSERT INTO usuarios VALUES(null, 'Pablo', 'Loarces', 'pablo@pablo.com','0123','2021-02-09');

# INSERTAR FILAS A CIERTAS COLUMNAS #
INSERT INTO usuarios(email, password) VALUES ('ramon@ramon.com', '1111');
INSERT INTO usuarios(nombre, email, password) VALUES ('admin','admin@admin.com', '01234');
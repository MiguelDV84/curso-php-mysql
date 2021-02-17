CREATE TABLE usuarios(
id          int(255) auto_increment not null,
nombre      varchar(100) not null,
apellidos   varchar (150) not null,
email       varchar (255) not null,
password    varchar(255) not null,
fecha       date not null,
CONSTRAINT pk_usuarios PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE KEY (email)
)ENGINE=InnoDb;

CREATE TABLE categorias (
id          int(255) auto_increment not null,
nombre      varchar(100),
CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE posts(
id              int(255) auto_increment not null,
usuario_id      int (255) not null,
categoria_id    int (255) not null,
titulo          varchar (255) not null,
descripcion     MEDIUMTEXT,
fecha           date not null,
CONSTRAINT pk_posts PRIMARY KEY(id),
CONSTRAINT fk_post_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
CONSTRAINT fk_post_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
)ENGINE=InnoDb;
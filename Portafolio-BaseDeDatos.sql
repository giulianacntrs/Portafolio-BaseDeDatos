use ucwqsox1ddfd5rjp;
CREATE TABLE usuario(
  idUsuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  mail VARCHAR(40),
  contraseña VARCHAR(12),
  UNIQUE (mail),
  UNIQUE (contraseña)
);

INSERT INTO usuario (mail, contraseña) VALUES ('usuario1@gmail.com', 'usuario1');

CREATE TABLE header (
  idHeader INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  banner LONGBLOB,
  fotoperfil LONGBLOB,
  nombre VARCHAR(30),
  profesion VARCHAR(30),
  FOREIGN KEY (idHeader) REFERENCES usuario(idUsuario) -- Restricción de clave foránea para relacionar con la tabla "usuario"
);

CREATE TABLE presentacion (
  idPresentacion INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  info VARCHAR(140),
  institucion VARCHAR(30),
  formacion VARCHAR(30),
  fecha VARCHAR(10),
  FOREIGN KEY (idPresentacion) REFERENCES usuario(idUsuario) -- Restricción de clave foránea para relacionar con la tabla "usuario"
);

CREATE TABLE skills (
  idSkill INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  skill VARCHAR(30),
  porcentajeValor INT,
  FOREIGN KEY (idSkill) REFERENCES usuario(idUsuario) -- Restricción de clave foránea para relacionar con la tabla "usuario"
);

CREATE TABLE proyectos (
  idProyecto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  imagen LONGBLOB,
  titulo VARCHAR(30),
  descripcion VARCHAR(140),
  enlace VARCHAR(255),
  FOREIGN KEY (idProyecto) REFERENCES usuario(idUsuario) -- Restricción de clave foránea para relacionar con la tabla "usuario"
);

select * from usuario;
select * from proyectos;
select * from skills;
select * from header;
select * from presentacion;
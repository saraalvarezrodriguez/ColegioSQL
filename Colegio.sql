DROP DATABASE if exists colegio;
CREATE DATABASE if not exists colegio CHARACTER SET UTF8mb4 COLLATE utf8mb4_bin;
USE colegio;

CREATE TABLE if not exists asignatura (
id INT(6) NOT NULL auto_increment,
nombre VARCHAR(25) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE if not exists alumno (
id INT(6) NOT NULL auto_increment,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR (25) NOT NULL,
fecha_nacimiento DATE NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE if not exists nota (
id INT(6) NOT NULL auto_increment,
asignatura_id INT,
calificacion FLOAT NOT NULL,
fecha_examen DATE NOT NULL,
convocatoria INT(6),
alumno_id INT,
INDEX alum_ind (alumno_id),
FOREIGN KEY (alumno_id)
REFERENCES alumno(id)
ON DELETE CASCADE,
INDEX asignat_ind (asignatura_id),
FOREIGN KEY (asignatura_id)
REFERENCES asignatura(id)
ON DELETE CASCADE,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE if not exists labor_extra (
puesto VARCHAR(50) NOT NULL,
alumno_id INT NOT NULL,
INDEX alum_ind (alumno_id),
FOREIGN KEY (alumno_id)
REFERENCES alumno(id)
ON DELETE CASCADE,
PRIMARY KEY (puesto, alumno_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
AUTO_INCREMENT=1;

-- insertar asignatura
INSERT INTO asignatura(nombre) VALUES ('Matemáticas');
INSERT INTO asignatura(nombre) VALUES ('Lengua');

-- insertar alumno
INSERT INTO alumno(nombre, apellido, fecha_nacimiento) VALUES ('Juan', 'Quesada', '1980-09-03');
INSERT INTO alumno(nombre, apellido, fecha_nacimiento) VALUES ('Manuel', 'Rico', '1992-11-10');
INSERT INTO alumno(nombre, apellido, fecha_nacimiento) VALUES ('Pedro', 'Riesgo', '1980-01-05');
INSERT INTO alumno(nombre, apellido, fecha_nacimiento) VALUES ('Maria', 'Valenzuela', '1986-12-19');

-- insertar nota
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (1, 7, '2018-12-19', 1, 1);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (2, 5, '2018-11-03', 2, 1);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (1, 3, '2018-11-03', 3, 2);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (2, 8, '2018-11-03', 1, 2);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (1, 2, '2018-07-05', 2, 3);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (2, 5, '2018-11-03', 1, 3);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (1, 9, '2018-09-13', 3, 4);
INSERT INTO nota(asignatura_id, calificacion, fecha_examen,convocatoria, alumno_id) VALUES (2, 5, '2018-11-23', 1, 4);

-- insertar labor extra
INSERT INTO labor_extra(puesto, alumno_id) VALUES ('Delegado', 1);
INSERT INTO labor_extra(puesto, alumno_id) VALUES ('Director', 2);

ALTER TABLE alumno ADD COLUMN apellido2 VARCHAR(25) AFTER apellido;

UPDATE alumno SET apellido2 = 'Palazon' WHERE id = 1;
UPDATE alumno SET apellido2 = 'Gomez' WHERE id = 2;
UPDATE alumno SET apellido2 = 'Leost' WHERE id = 3;
UPDATE alumno SET apellido2 = 'Gutierrez' WHERE id = 4;
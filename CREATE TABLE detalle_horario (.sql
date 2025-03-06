CREATE TABLE detalle_horario (
  horario_id int(11) NOT NULL,
  hora_salida date NOT NULL,
  hora_entrada date NOT NULL,
  codigo_incapacidad varchar(25) DEFAULT NULL,
  PRIMARY KEY (horario_id, hora_salida)
);

CREATE TABLE plantilla_detalle_horario (
  plantilla_id int(11) NOT NULL,
  dia int(11) NOT NULL,
  codigo_incapacidad varchar(25) DEFAULT NULL,
  turno varchar(25) DEFAULT NULL,
  PRIMARY KEY (plantilla_id, dia)
);

INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 1, NULL, '1/10');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 2, NULL, '1/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 3, NULL, '1/10');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 4, NULL, '1/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 5, NULL, '1/10');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 6, 'vacaciones', NULL);
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (1, 7, 'vacaciones', NULL);
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 1, NULL, '2/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 2, NULL, '1/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 3, NULL, '2/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 4, NULL, '1|11.5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 5, NULL, '1/11,5');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 6, 'vacaciones', NULL);
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (2, 7, 'vacaciones', NULL);
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (3, 1, NULL, '1#8');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (3, 2, NULL, '1.0');
INSERT INTO plantilla_detalle_horario (plantilla_id, dia, codigo_incapacidad, turno) 
VALUES (3, 3, 'viaje_negocios', NULL);

CREATE TABLE horario (
  horario_id int(11) NOT NULL AUTO_INCREMENT,
  plantilla_id int(11) DEFAULT NULL,
  PRIMARY KEY (horario_id)
);

INSERT INTO horario (horario_id, plantilla_id) 
VALUES (1, 5);
INSERT INTO horario (horario_id, plantilla_id) 
VALUES (2, 1);
INSERT INTO horario (horario_id, plantilla_id) 
VALUES (4, 2);
INSERT INTO horario (horario_id, plantilla_id) 
VALUES (3, 3);
INSERT INTO horario (horario_id, plantilla_id) 
VALUES (5, 4);

CREATE TABLE USUARIOS (
  NOMBRES varchar(25) NOT NULL,
  APELLIDOS varchar(25)  DEFAULT NULL,
  DEPARTAMENTO varchar(25)  DEFAULT NULL
);

INSERT INTO USUARIOS (NOMBRES, APELLIDOS, DEPARTAMENTO)
VALUES ('Juan Lorenzo', 'Gómez Muñoz', 'Apartamento 3');

INSERT INTO USUARIOS (NOMBRES, APELLIDOS, DEPARTAMENTO)
VALUES ('Ana María', 'Ramírez Pérez', 'Apartamento 5');

INSERT INTO USUARIOS (NOMBRES, APELLIDOS, DEPARTAMENTO)
VALUES ('Carlos Alberto', 'López García', 'Apartamento 8');
    

DELIMITER $$

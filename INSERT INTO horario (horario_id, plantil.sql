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
 

 INSERT INTO  detalle_horario (horario_id,  hora_salida,  hora_entrada , codigo_incapacidad)   
 VALUES (6, '2000/03/14 02:00', '1999/03/14 03:00', 'vacaciones' );

 INSERT INTO detalle_horario (horario_id, hora_salida, hora_entrada, codigo_incapacidad)
 VALUES (7, '2001/02/10 07:30', '2001/02/10 08:30', 'enfermedad');

 INSERT INTO detalle_horario (horario_id, hora_salida, hora_entrada, codigo_incapacidad)
 VALUES (8, '2005/06/25 09:15', '2005/06/25 10:15', 'accidente');

 INSERT INTO detalle_horario (horario_id, hora_salida, hora_entrada, codigo_incapacidad)
 VALUES (9, '2008/11/30 12:00', '2008/11/30 13:00', 'licencia');

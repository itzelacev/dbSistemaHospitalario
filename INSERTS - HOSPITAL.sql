-- INSERCION DE DATOS
-- PARA TABLA SERVICIOS
INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('COVID-19','Alta seguridad e higiene');

INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Traumatologia','Para los huesos quebrados');
 
INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Medicina Interna','Para organos internos');

INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Urologia','Hombres');

INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Ginecologia','Mujeres');

INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Cardiologia','Problemas del corazon');
    
INSERT INTO SERVICIO (nombre,comentario)
	VALUES ('Cancerologia','Adultos y niños');

-- PARA TABLA MEDICO
INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('12345678','Maria Felix Quesada','11/01/1985',1);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('87654321','Juan Gabriel','18/03/1980',1);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('12378645','Jose Jose','20/12/1983',1);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('98765432','Pedro Infante','15/11/1978',1);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('23456789','Jorge Negrete','09/02/1979',1);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('45678923','Vicente Fernandez','30/05/1980',0);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('78945623','Luis Miguel','28/09/1981',0);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('98745623','Ana Gabriel','17/07/1982',0);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('12365487','Joan Sebastian','10/06/1983',0);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('74185296','Chavela Vargas','07/12/1984',0);

INSERT INTO MEDICO (cedula,nombre,fech_nacimiento,director)
	VALUES ('25874163','Jose Alfredo Jimenez','05/04/1985',1);

-- PARA HOSPITAL
INSERT INTO HOSPITAL (num_hospital,nombre,ciudad,telefono,id_medico)
	VALUES ('1','El charro','Colima','3141567847','2');

INSERT INTO HOSPITAL (num_hospital,nombre,ciudad,telefono,id_medico)
	VALUES ('10','El Triste','Villa Hermosa','3121234567','3');

INSERT INTO HOSPITAL (num_hospital,nombre,ciudad,telefono,id_medico)
	VALUES ('12','Cien anos','Xalapa','3131234567','4');

INSERT INTO HOSPITAL (num_hospital,nombre,ciudad,telefono,id_medico)
	VALUES ('14','Yo soy mexicano','La Paz','5541234567','5');

INSERT INTO HOSPITAL (num_hospital,nombre,ciudad,telefono,id_medico)
	VALUES ('16','Camino de Guanajuato','Chetumal','3351234567','11');


-- PARA HOSPITAL_SERVICIO
INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (20,1,1);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (5,1,2);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (5,1,3);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (30,2,1);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (15,2,4);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (12,2,5);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (27,3,1);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (13,3,6);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (11,3,7);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (26,4,1);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (8,4,3);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (5,4,6);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (20,5,1);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (4,5,2);

INSERT INTO HOSPITAL_SERVICIO (camas,id_hospital,id_servicio)
	VALUES (10,5,7);


-- PARA MEDICO_HOSPITAL
INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (1,1);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (2,1);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (3,2);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (4,3);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (5,4);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (6,2);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (7,3);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (8,4);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (9,5);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (10,3);

INSERT INTO MEDICO_HOSPITAL (id_medico,id_hospital)
	VALUES (11,5);


-- PARA MEDICO_SERVICIO
INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (1,2);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (2,3);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (3,4);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (4,7);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (5,6);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (6,4);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (7,6);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (8,3);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (9,2);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (10,7);

INSERT INTO MEDICO_SERVICIO (id_medico,id_servicio)
	VALUES (11,7);


-- PARA PACIENTE
INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('12345678911','Camilo Sesto','12/02/1970','Alcoholico');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('21987654321','Roberto Carlos','31/01/1960','Diabetico');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('14725836914','Rocio Durcal','17/04/1965','Diabetes');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('41963852741','Julio Iglesias','16/03/1968','Problemas de Cardio');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('12789456123','Emanuel','04/11/1974','Problemas respiratorios');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('41369258147','Marco Antonio Solis','06/10/1980','Sin problemas');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('12456789123','Franco de Vita','15/08/1978','Problemas de estomago');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('14369258569','Eros Ramazzotti','17/06/1969','Diabetes');

INSERT INTO PACIENTE (no_ss,nombre,fech_nacimiento,otros)
	VALUES ('78914712352','Joaquin Sabina','28/10/1972','Problemas cardiacos');


-- PARA VISITA
INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('30/05/2020 10:10','Diarrea','Paracetamol y agua',2,7,1,3);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('20/05/2020 12:13','Fiebre','Paracetamol y agua',3,6,5,1);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('29/05/2020 19:18','Paro respiratorio','Internar',4,9,4,3);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('28/05/2020 20:40','Paro cardiaco','Internar',5,5,4,6);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('26/05/2020 21:50','Neumonia atipica','Internar',6,3,2,1);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('25/05/2020 23:15','COVID','Paracetamol y agua',7,8,4,1);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('24/05/2020 08:30','COVID','Paracetamol y agua',8,10,3,1);

INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
	id_hospital,id_servicio) 
    VALUES ('23/05/2020 11:07','Diarrea','Sueros bebibles',10,1,1,3);


-- PARA INGRESO
INSERT INTO INGRESO (no_habitacion,id_visita)
	VALUES (2,3);

INSERT INTO INGRESO (no_habitacion,fech_salida,id_visita)
	VALUES (1,'30/05/2020',4);

INSERT INTO INGRESO (no_habitacion,fech_salida,id_visita)
	VALUES (3,'29/05/2020',5);

-- Crear la base de datos
CREATE DATABASE db_SISTEMA_HOSPITALARIO;
USE db_SISTEMA_HOSPITALARIO;

-- Crear las tablas
CREATE TABLE HOSPITAL(
	id_hospital INT(6) AUTO_INCREMENT PRIMARY KEY,
    num_hospital INT(6) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    id_medico INT(6) NOT NULL
);

CREATE TABLE SERVICIO(
	id_servicio INT(6) AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(30),
    comentario VARCHAR(50)
);

CREATE TABLE HOSPITAL_SERVICIO(
	id_hospital_servicio INT(6) AUTO_INCREMENT PRIMARY KEY,
    camas INT(6),
    id_hospital INT(6) NOT NULL,
    id_servicio INT(6) NOT NULL
);

CREATE TABLE MEDICO(
	id_medico INT(6) AUTO_INCREMENT PRIMARY KEY,
    cedula INT(8) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    fech_nacimiento VARCHAR(10) NOT NULL,
    director BIT NOT NULL DEFAULT (0)
);

CREATE TABLE MEDICO_HOSPITAL(
	id_medico_hospital INT(6) AUTO_INCREMENT PRIMARY KEY,
    id_medico INT(6) NOT NULL,
    id_hospital INT(6) NOT NULL
);

CREATE TABLE MEDICO_SERVICIO(
	id_medico_servicio INT(6) AUTO_INCREMENT PRIMARY KEY,
    id_medico INT(6) NOT NULL,
    id_servicio INT(6) NOT NULL
);

CREATE TABLE PACIENTE(
	id_paciente INT(6) AUTO_INCREMENT PRIMARY KEY,
    no_ss VARCHAR(11) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
    fech_nacimiento VARCHAR(10) NOT NULL,
    otros VARCHAR(150)
);

CREATE TABLE VISITA(
	id_visita INT(6) AUTO_INCREMENT PRIMARY KEY,
    fech_hora VARCHAR(16) NOT NULL,
    diagnostico VARCHAR(50) NOT NULL,
    tratamiento VARCHAR(150),
    id_paciente INT(6) NOT NULL,
    id_medico INT(6) NOT NULL,
    id_hospital INT(6) NOT NULL,
    id_servicio INT(6) NOT NULL
);

CREATE TABLE INGRESO(
	id_ingreso INT(6) AUTO_INCREMENT PRIMARY KEY,
	no_habitacion INT(4) NOT NULL,
    fech_salida VARCHAR(10),
    id_visita INT(6) NOT NULL
);

-- Crear llaves foraneas
ALTER TABLE HOSPITAL 
	ADD CONSTRAINT fk_hospital_medico
    FOREIGN KEY (id_medico)
    REFERENCES MEDICO(id_medico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
    
ALTER TABLE HOSPITAL_SERVICIO
	ADD CONSTRAINT fk_hospital_servicio_hospital
    FOREIGN KEY (id_hospital)
    REFERENCES HOSPITAL(id_hospital)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE HOSPITAL_SERVICIO
	ADD CONSTRAINT fk_hospital_servicio_servicio
    FOREIGN KEY (id_servicio)
    REFERENCES SERVICIO(id_servicio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE MEDICO_HOSPITAL
	ADD CONSTRAINT fk_medico_hospital_medico
    FOREIGN KEY (id_medico)
    REFERENCES MEDICO(id_medico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE MEDICO_HOSPITAL
	ADD CONSTRAINT fk_medico_hospital_hospital
    FOREIGN KEY (id_hospital)
    REFERENCES HOSPITAL(id_hospital)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE MEDICO_SERVICIO
	ADD CONSTRAINT fk_medico_servicio_medico
    FOREIGN KEY (id_medico)
    REFERENCES MEDICO(id_medico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
    
ALTER TABLE MEDICO_SERVICIO
	ADD CONSTRAINT fk_medico_servicio_servicio
    FOREIGN KEY (id_servicio)
    REFERENCES SERVICIO(id_servicio)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE VISITA
	ADD CONSTRAINT fk_visita_paciente 
    FOREIGN KEY (id_paciente)
    REFERENCES PACIENTE(id_paciente)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE VISITA
	ADD CONSTRAINT fk_visita_medico
    FOREIGN KEY (id_medico)
    REFERENCES MEDICO(id_medico)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE VISITA
	ADD CONSTRAINT fk_visita_hospital
    FOREIGN KEY (id_hospital)
    REFERENCES HOSPITAL(id_hospital)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

ALTER TABLE VISITA
	ADD CONSTRAINT fk_visita_servicio
    FOREIGN KEY (id_servicio)
    REFERENCES SERVICIO(id_servicio)
    ON DELETE NO ACTION 
    ON UPDATE NO ACTION;

ALTER TABLE INGRESO
	ADD CONSTRAINT fk_ingreso_visita
    FOREIGN KEY (id_visita)
    REFERENCES VISITA(id_visita)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

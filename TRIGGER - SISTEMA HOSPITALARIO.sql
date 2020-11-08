-- Disparador 1: Cada vez que se hospitalice un paciente se decremente el número de 
-- camas disponibles en la especialidad o servicio y hospital que corresponda.
DELIMITER //
CREATE TRIGGER tr_actualiza_cama_after_insert
AFTER INSERT 
ON INGRESO
FOR EACH ROW
BEGIN
DECLARE T_SERVICIO INT;
DECLARE T_HOSPITAL INT;
SET T_SERVICIO = (SELECT id_servicio FROM VISITA WHERE id_visita = new.id_visita);
SET T_HOSPITAL = (SELECT id_hospital FROM VISITA WHERE id_visita = new.id_visita);
UPDATE HOSPITAL_SERVICIO SET camas = camas - 1 
	WHERE id_hospital = T_HOSPITAL AND id_servicio = T_SERVICIO;
END //
SELECT * FROM HOSPITAL_SERVICIO;
INSERT INTO INGRESO(no_habitacion,id_visita)
	VALUES (4,7);
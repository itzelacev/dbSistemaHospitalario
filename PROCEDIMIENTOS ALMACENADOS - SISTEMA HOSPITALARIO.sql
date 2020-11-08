-- Procedimiento 1: Que permita registrar una consulta o visita médica de un paciente
-- y regrese cuántas consultas se tienen asociadas el servicio o especialidad: 
-- “COVID-19”.
DELIMITER //
CREATE PROCEDURE PA_INGRESAR_VISITA(
	IN p_fech_hora VARCHAR(16),
    IN p_diagnostico VARCHAR(50),
    IN p_tratamiento VARCHAR(150),
    IN p_id_paciente INT,
    IN p_id_medico INT,
    IN p_id_hospital INT,
    IN p_id_servicio INT 
)
BEGIN
	INSERT INTO VISITA (fech_hora,diagnostico,tratamiento,id_paciente,id_medico,
		id_hospital,id_servicio)
		VALUES (p_fech_hora,p_diagnostico,p_tratamiento,p_id_paciente,p_id_medico,
        p_id_hospital,p_id_servicio);
	SELECT COUNT(id_visita) visitas_covid 
		FROM VISITA
        WHERE id_servicio = 1;
END //
DELIMITER ;


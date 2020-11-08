-- Vista 1: Vista que obtenga el listado de consultas o visitas médicas de pacientes 
-- con los datos: fecha/hora de consulta, nombre completo del paciente, nombre del 
-- médico que atendió, nombre del hospital donde se atendió, especialidad o servicio 
-- al que corresponde, diagnóstico y tratamiento sugerido.
CREATE VIEW VW1_VISITAS AS
	SELECT vi.fech_hora AS fech_hora_consulta, pa.nombre AS nombre_paciente,
    me.nombre AS nombre_medico, ho.nombre AS nombre_hospital, se.nombre AS especialidad,
    vi.diagnostico, vi.tratamiento
    FROM VISITA vi
    INNER JOIN PACIENTE pa ON pa.id_paciente = vi.id_paciente
    INNER JOIN MEDICO me ON me.id_medico = vi.id_medico
    INNER JOIN HOSPITAL ho ON ho.id_hospital = vi.id_hospital
    INNER JOIN SERVICIO se ON se.id_servicio = vi.id_servicio;


-- Vista 2: Vista que obtenga únicamente el listado de consultas o visitas médicas de 
-- pacientes que sí requirieron hospitalización con los datos: fecha/hora de consulta, 
-- nombre completo del paciente, nombre del médico que atendió, nombre del hospital 
-- donde se atendió, especialidad o servicio al que corresponde, diagnóstico, 
-- tratamiento sugerido, número de cama, fecha de ingreso y fecha de egreso
CREATE VIEW VW2_VISITAS_INTERNADOS AS
	SELECT vi.fech_hora AS fech_hora_consulta, pa.nombre AS nombre_paciente,
    me.nombre AS nombre_medico, ho.nombre AS nombre_hospital, se.nombre AS especialidad,
    vi.diagnostico, vi.tratamiento, ing.no_habitacion AS no_cama, 
    vi.fech_hora AS fech_ingreso, ing.fech_salida AS fecha_egreso
    FROM INGRESO ing
    INNER JOIN VISITA vi ON vi.id_visita = ing.id_visita
    INNER JOIN PACIENTE pa ON pa.id_paciente = vi.id_paciente
    INNER JOIN MEDICO me ON me.id_medico = vi.id_medico
    INNER JOIN HOSPITAL ho ON ho.id_hospital = vi.id_hospital
    INNER JOIN SERVICIO se ON se.id_servicio = vi.id_servicio;


-- Vista 3: Vista obtenga el listado de hospitales con los servicios o especialidades 
-- que ofrece con los datos: número de hospital, nombre del hospital, ciudad, nombre 
-- del servicio y número de camas disponibles.
CREATE VIEW VW3_SERVICIOS_xHOSPITAL AS
    SELECT ho.num_hospital,ho.nombre AS nombre_hospital, ho.ciudad, se.nombre AS
    nombre_servicio, ho_se.camas AS no_camas
	FROM HOSPITAL ho
    INNER JOIN HOSPITAL_SERVICIO ho_se ON ho.id_hospital = ho_se.id_hospital
    INNER JOIN SERVICIO se ON se.id_servicio = ho_se.id_servicio;

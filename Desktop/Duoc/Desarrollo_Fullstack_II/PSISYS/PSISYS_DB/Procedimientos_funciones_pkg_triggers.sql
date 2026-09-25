-- PROCEDIMIENTO: hace una acción (cambia el estado de una evaluación), no devuelve valor.
CREATE OR REPLACE PROCEDURE sp_cambiar_estado_evaluacion (
    p_id_eva       NUMBER,
    p_nuevo_estado VARCHAR2
) AS
BEGIN
    UPDATE "Evaluación_Psicolaboral"
    SET    "std_eva" = p_nuevo_estado
    WHERE  "id_eva"  = p_id_eva;
 
    DBMS_OUTPUT.PUT_LINE('Evaluaciones actualizadas: ' || SQL%ROWCOUNT);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al cambiar el estado: ' || SQLERRM);
END;
/
 
BEGIN
    sp_cambiar_estado_evaluacion(2, 'EN_PROCESO');
END;
/

--rollback; --se descomenta esta linea si no queremos conservar el cambio






-- FUNCIÓN: devuelve un valor (días que lleva una solicitud en proceso).
CREATE OR REPLACE FUNCTION fn_dias_en_proceso (
    p_id_soli NUMBER
) RETURN NUMBER AS
    v_fecha "Datos_solicitud"."fecha_soli"%TYPE;
BEGIN
    SELECT "fecha_soli" INTO v_fecha
    FROM   "Datos_solicitud"
    WHERE  "id_soli" = p_id_soli;
 
    RETURN TRUNC(SYSDATE) - TRUNC(v_fecha);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;                 -- no existe la solicitud
    WHEN OTHERS THEN
        RETURN NULL;                 -- en produccion aqui se registraria el error
END;
/
 
SELECT "id_soli",
       fn_dias_en_proceso("id_soli") AS dias_en_proceso
FROM   "Datos_solicitud"
WHERE  "id_soli" <= 5
ORDER  BY "id_soli";







-- PACKAGE: agrupa el procedimiento y la función en un solo módulo ordenado.
CREATE OR REPLACE PACKAGE pkg_gestion_psicolaboral AS
    PROCEDURE sp_cambiar_estado_evaluacion (p_id_eva NUMBER, p_nuevo_estado VARCHAR2);
    FUNCTION  fn_dias_en_proceso (p_id_soli NUMBER) RETURN NUMBER;
END pkg_gestion_psicolaboral;
/
 
CREATE OR REPLACE PACKAGE BODY pkg_gestion_psicolaboral AS
 
    PROCEDURE sp_cambiar_estado_evaluacion (p_id_eva NUMBER, p_nuevo_estado VARCHAR2) AS
    BEGIN
        UPDATE "Evaluación_Psicolaboral"
        SET    "std_eva" = p_nuevo_estado
        WHERE  "id_eva"  = p_id_eva;
        DBMS_OUTPUT.PUT_LINE('Evaluaciones actualizadas: ' || SQL%ROWCOUNT);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error al cambiar el estado: ' || SQLERRM);
    END;
 
    FUNCTION fn_dias_en_proceso (p_id_soli NUMBER) RETURN NUMBER AS
        v_fecha "Datos_solicitud"."fecha_soli"%TYPE;
    BEGIN
        SELECT "fecha_soli" INTO v_fecha
        FROM   "Datos_solicitud"
        WHERE  "id_soli" = p_id_soli;
        RETURN TRUNC(SYSDATE) - TRUNC(v_fecha);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
        WHEN OTHERS THEN
            RETURN NULL;
    END;
 
END pkg_gestion_psicolaboral;
/
 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Dias en proceso de la solicitud 1: ' ||
        pkg_gestion_psicolaboral.fn_dias_en_proceso(1));
END;
/







-- TRIGGER: al insertar una evaluación, si no trae estado, lo deja en PENDIENTE automáticamente.
CREATE OR REPLACE TRIGGER trg_evaluacion_estado_default
    BEFORE INSERT ON "Evaluación_Psicolaboral"
    FOR EACH ROW
BEGIN
    IF :NEW."std_eva" IS NULL THEN
        :NEW."std_eva" := 'PENDIENTE';
    END IF;
END;
/

-- Probar el trigger:
INSERT INTO "Evaluación_Psicolaboral"
    ("id_eva","id_can","id_user_emp","cargo_post","fecha_eva","obs_eva")
VALUES
    (100, 1, 1, 'Desarrollador de Software', SYSDATE, 'Prueba del trigger');
 
SELECT "id_eva", "std_eva" FROM "Evaluación_Psicolaboral" WHERE "id_eva" = 100;
 
DELETE FROM "Evaluación_Psicolaboral" WHERE "id_eva" = 100;
COMMIT;
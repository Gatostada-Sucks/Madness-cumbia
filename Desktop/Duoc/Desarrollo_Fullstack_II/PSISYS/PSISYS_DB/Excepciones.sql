-- EXCEPCIÓN PREDEFINIDA: atrapa errores que Oracle ya conoce (candidato inexistente, clave repetida).
DECLARE
    v_nombre "candidato"."pri_nom_can"%TYPE;
BEGIN
    SELECT "pri_nom_can" INTO v_nombre
    FROM   "candidato"
    WHERE  "id_can" = 999;
 
    DBMS_OUTPUT.PUT_LINE('Candidato: ' || v_nombre);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: ese candidato no existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
/




-- EXCEPCIÓN PREDEFINIDA: atrapa errores que Oracle ya conoce (candidato inexistente, clave repetida).
BEGIN
    INSERT INTO "candidato"
        ("id_can","pri_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can")
    VALUES
        (1,'Duplicado','Prueba','Prueba','+56 9 0000 0000','dup@correo.com');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: ese id de candidato ya esta registrado.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
/




-- EXCEPCIÓN DEFINIDA POR EL USUARIO: corta el proceso ante una regla propia del negocio (evaluación rechazada).
DECLARE
    e_sin_respaldo EXCEPTION;
    v_respaldo "candidato"."seg_email_can"%TYPE;
BEGIN
    SELECT "seg_email_can" INTO v_respaldo
    FROM   "candidato"
    WHERE  "id_can" = 2;
 
    IF v_respaldo IS NULL THEN
        RAISE e_sin_respaldo;
    END IF;
 
    DBMS_OUTPUT.PUT_LINE('Correo de respaldo: ' || v_respaldo);
EXCEPTION
    WHEN e_sin_respaldo THEN
        DBMS_OUTPUT.PUT_LINE('Aviso: el candidato no tiene correo de respaldo.');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: ese candidato no existe.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
/





-- EXCEPCIÓN DEFINIDA POR EL USUARIO: corta el proceso ante una regla propia del negocio (evaluación rechazada).
DECLARE
    v_estado "Evaluación_Psicolaboral"."std_eva"%TYPE;
BEGIN
    SELECT "std_eva" INTO v_estado
    FROM   "Evaluación_Psicolaboral"
    WHERE  "id_eva" = 9;
 
    IF v_estado = 'RECHAZADA' THEN
        RAISE_APPLICATION_ERROR(-20010,
            'La evaluacion 9 esta rechazada: no puede generar informe.');
    END IF;
 
    DBMS_OUTPUT.PUT_LINE('Evaluacion en estado: ' || v_estado);
END;
/
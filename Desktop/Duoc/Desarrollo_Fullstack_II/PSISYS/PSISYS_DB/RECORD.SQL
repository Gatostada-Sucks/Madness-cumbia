
-- RECORD: junta los datos del candidato (nombre, cargo, estado, fecha) en una sola ficha.
DECLARE
    TYPE t_ficha_solicitud IS RECORD (
        nombre_completo VARCHAR2(200),
        cargo_postulado "Evaluación_Psicolaboral"."cargo_post"%TYPE,
        estado          "Evaluación_Psicolaboral"."std_eva"%TYPE,
        fecha           "Evaluación_Psicolaboral"."fecha_eva"%TYPE
    );
 
    v_ficha t_ficha_solicitud;
BEGIN
    SELECT c."pri_nom_can" || ' ' || c."pri_apll_can",
           e."cargo_post",
           e."std_eva",
           e."fecha_eva"
    INTO   v_ficha.nombre_completo,
           v_ficha.cargo_postulado,
           v_ficha.estado,
           v_ficha.fecha
    FROM   "candidato" c
    JOIN   "Evaluación_Psicolaboral" e ON e."id_can" = c."id_can"
    WHERE  e."id_eva" = 1;
 
    DBMS_OUTPUT.PUT_LINE('***** FICHA DE SOLICITUD *****');
    DBMS_OUTPUT.PUT_LINE('Candidato : ' || v_ficha.nombre_completo);
    DBMS_OUTPUT.PUT_LINE('Cargo     : ' || v_ficha.cargo_postulado);
    DBMS_OUTPUT.PUT_LINE('Estado    : ' || v_ficha.estado);
    DBMS_OUTPUT.PUT_LINE('Fecha     : ' || v_ficha.fecha);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: no existe la evaluacion buscada.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: la consulta devolvio mas de una fila.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
END;
/
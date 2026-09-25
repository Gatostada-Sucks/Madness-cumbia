-- CURSOR SIN PARÁMETROS: recorre todas las evaluaciones PENDIENTE, una por una.
DECLARE
    CURSOR c_pendientes IS
        SELECT "id_eva", "id_can", "cargo_post", "fecha_eva"
        FROM   "Evaluación_Psicolaboral"
        WHERE  "std_eva" = 'PENDIENTE';
BEGIN
    DBMS_OUTPUT.PUT_LINE('***** EVALUACIONES PENDIENTES *****');
    FOR eva IN c_pendientes LOOP
        DBMS_OUTPUT.PUT_LINE('Eva ' || eva."id_eva" ||
                             ' | Candidato ' || eva."id_can" ||
                             ' | ' || eva."cargo_post");
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al recorrer las evaluaciones: ' || SQLERRM);
END;
/






-- CURSOR CON PARÁMETROS: recibe un id de candidato y trae solo sus evaluaciones.
DECLARE
    CURSOR c_eval_candidato (p_id_can NUMBER) IS
        SELECT "id_eva", "std_eva", "cargo_post", "fecha_eva"
        FROM   "Evaluación_Psicolaboral"
        WHERE  "id_can" = p_id_can;
BEGIN
    DBMS_OUTPUT.PUT_LINE('***** EVALUACIONES DEL CANDIDATO 1 *****');
    FOR eva IN c_eval_candidato(1) LOOP
        DBMS_OUTPUT.PUT_LINE('Eva ' || eva."id_eva" ||
                             ' | Estado ' || eva."std_eva" ||
                             ' | ' || eva."cargo_post");
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error al consultar el candidato: ' || SQLERRM);
END;
/




-- LOOP ANIDADO: por cada candidato, recorre todas sus evaluaciones.
DECLARE
    CURSOR c_candidatos IS
        SELECT "id_can", "pri_nom_can", "pri_apll_can"
        FROM   "candidato"
        ORDER  BY "id_can";
 
    CURSOR c_eval_candidato (p_id_can NUMBER) IS
        SELECT "id_eva", "std_eva", "cargo_post"
        FROM   "Evaluación_Psicolaboral"
        WHERE  "id_can" = p_id_can;
BEGIN
    FOR cand IN c_candidatos LOOP                          -- MAESTRO
        DBMS_OUTPUT.PUT_LINE('==============================');
        DBMS_OUTPUT.PUT_LINE('Candidato ' || cand."id_can" || ': ' ||
                             cand."pri_nom_can" || ' ' || cand."pri_apll_can");
 
        FOR eva IN c_eval_candidato(cand."id_can") LOOP    -- DETALLE
            DBMS_OUTPUT.PUT_LINE('   - Eva ' || eva."id_eva" ||
                                 ' | ' || eva."std_eva" ||
                                 ' | ' || eva."cargo_post");
        END LOOP;
    END LOOP;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error en el recorrido maestro-detalle: ' || SQLERRM);
END;
/
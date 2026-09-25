-- VARRAY: lista fija de correos de analistas a notificar cuando entra una solicitud.
DECLARE
    TYPE t_correos IS VARRAY(5) OF VARCHAR2(150);
 
    v_correos t_correos := t_correos(
        'camila.rojas@empresa.cl',
        'valentina.contreras@empresa.cl',
        'matias.fuentes@empresa.cl',
        'sebastian.herrera@empresa.cl'
    );
BEGIN
    DBMS_OUTPUT.PUT_LINE('***** ANALISTAS A NOTIFICAR *****');
    FOR i IN 1 .. v_correos.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('  ' || i || ') ' || v_correos(i));
    END LOOP;
END;
/
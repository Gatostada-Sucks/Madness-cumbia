-- 1) Usuario_Empresa  (analistas / usuarios del sistema)
-- ============================================================
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (1,'18345678','5','Camila','Andrea','Rojas','Muñoz','camila.rojas@empresa.cl','c.rojas@gmail.com');
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (2,'17654321','K','Felipe','Ignacio','Soto','Vera','felipe.soto@empresa.cl',NULL);
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (3,'19876543','2','Valentina','Paz','Contreras','Díaz','valentina.contreras@empresa.cl',NULL);
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (4,'16234567','9','Matías','Alejandro','Fuentes','Reyes','matias.fuentes@empresa.cl','m.fuentes@outlook.com');
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (5,'20111222','3','Javiera','Antonia','Morales','Silva','javiera.morales@empresa.cl',NULL);
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (6,'15987654','1','Sebastián','Nicolás','Herrera','Castro','sebastian.herrera@empresa.cl',NULL);
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (7,'21333444','6','Daniela','Fernanda','Vega','Pizarro','daniela.vega@empresa.cl',NULL);
INSERT INTO "Usuario_Empresa" ("user_id_emp","rut_user","rut_v_user","pri_nombre_user","seg_nombre_user","pri_apellido_user","seg_apellido_user","email_user","alt_email_user") VALUES (8,'14567890','0','Rodrigo','Esteban','Núñez','Tapia','rodrigo.nunez@empresa.cl','r.nunez@gmail.com');
 
-- ============================================================
-- 2) Rol
-- ============================================================
INSERT INTO "Rol" ("id_rol","n_rol") VALUES (1,'Reclutador');
INSERT INTO "Rol" ("id_rol","n_rol") VALUES (2,'Analista Psicolaboral');
INSERT INTO "Rol" ("id_rol","n_rol") VALUES (3,'Supervisor');
INSERT INTO "Rol" ("id_rol","n_rol") VALUES (4,'Administrador');
 
-- ============================================================
-- 3) Cargo
-- ============================================================
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (1,'Desarrollador de Software','Conocimientos en programacion, bases de datos y trabajo en equipo.');
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (2,'Analista Contable','Manejo de sistemas contables, tributacion y remuneraciones.');
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (3,'Ejecutivo de Ventas','Orientacion a resultados y experiencia en atencion a clientes.');
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (4,'Jefe de Operaciones','Liderazgo de equipos, gestion de procesos e indicadores.');
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (5,'Asistente Administrativo','Organizacion documental y soporte administrativo general.');
INSERT INTO "Cargo" ("id_car","nombre_car","perfil_req") VALUES (6,'Ingeniero de Proyectos','Planificacion, seguimiento y control de proyectos.');
 
-- ============================================================
-- 4) candidato
-- ============================================================
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (1,'José','Luis','Pérez','Gómez','+56 9 8712 3456','jose.perez@correo.com','jperez@gmail.com');
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (2,'Ana','María','Rondón','Herrera','+56 9 9823 1145','ana.rondon@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (3,'Carlos','Eduardo','Martínez','Suárez','+56 9 6534 7789','carlos.martinez@correo.com','c.martinez@outlook.com');
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (4,'Gabriela',NULL,'Torres','Blanco','+56 9 7745 2210','gabriela.torres@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (5,'Luis','Alberto','Ramírez','Ojeda','+56 9 8890 4432','luis.ramirez@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (6,'Daniela',NULL,'Castro','Peña','+56 9 9911 5567','daniela.castro@correo.com','d.castro@gmail.com');
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (7,'Andrés','Felipe','Guerra','Molina','+56 9 6678 8834','andres.guerra@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (8,'Fernanda','Paz','Salazar','Vera','+56 9 7723 9910','fernanda.salazar@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (9,'Miguel','Ángel','Delgado','Rivas','+56 9 8845 1123','miguel.delgado@correo.com','m.delgado@yahoo.com');
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (10,'Camila',NULL,'Ortiz','Fuentes','+56 9 9956 6678','camila.ortiz@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (11,'Jorge',NULL,'Navarro','León','+56 9 6612 3345','jorge.navarro@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (12,'Patricia','Andrea','Vásquez','Mora','+56 9 7789 4456','patricia.vasquez@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (13,'Roberto','Carlos','Cárdenas','Espinoza','+56 9 8867 5567','roberto.cardenas@correo.com','r.cardenas@gmail.com');
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (14,'Isabel',NULL,'Muñoz','Araya','+56 9 9934 6678','isabel.munoz@correo.com',NULL);
INSERT INTO "candidato" ("id_can","pri_nom_can","seg_nom_can","pri_apll_can","seg_apll_can","tel_can","pri_email_can","seg_email_can") VALUES (15,'Diego',NULL,'Sepúlveda','Bravo','+56 9 6645 7789','diego.sepulveda@correo.com',NULL);
 
-- ============================================================
-- 5) consulta_estado  (catalogo de estados)
-- ============================================================
INSERT INTO "consulta_estado" ("id_estado_cons","nom_estado") VALUES (1,'PENDIENTE');
INSERT INTO "consulta_estado" ("id_estado_cons","nom_estado") VALUES (2,'EN_PROCESO');
INSERT INTO "consulta_estado" ("id_estado_cons","nom_estado") VALUES (3,'INFORME_GENERADO');
INSERT INTO "consulta_estado" ("id_estado_cons","nom_estado") VALUES (4,'CERRADA');
INSERT INTO "consulta_estado" ("id_estado_cons","nom_estado") VALUES (5,'RECHAZADA');
 
-- ============================================================
-- 6) User_rol  (FK -> Rol y Usuario_Empresa)
-- ============================================================
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (1,1);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (2,1);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (1,2);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (2,3);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (3,3);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (2,4);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (1,5);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (2,6);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (3,7);
INSERT INTO "User_rol" ("id_rol","user_id") VALUES (4,8);
 
-- ============================================================
-- 7) Evaluación_Psicolaboral  (FK -> candidato y Usuario_Empresa)
--    std_eva = texto del estado ; cargo_post = texto del cargo
--    Hay 5 evaluaciones en 'PENDIENTE' para el demo de cursores.
-- ============================================================
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (1,1,1,'PENDIENTE','Desarrollador de Software',TO_DATE('2025-03-03','YYYY-MM-DD'),'Solicitud recibida, evaluacion aun no iniciada.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (2,2,3,'EN_PROCESO','Analista Contable',TO_DATE('2025-03-05','YYYY-MM-DD'),'Entrevista realizada, informe en elaboracion.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (3,3,4,'INFORME_GENERADO','Ejecutivo de Ventas',TO_DATE('2025-02-10','YYYY-MM-DD'),'Informe psicolaboral generado y disponible para revision.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (4,4,1,'PENDIENTE','Asistente Administrativo',TO_DATE('2025-03-12','YYYY-MM-DD'),'Solicitud recibida, evaluacion aun no iniciada.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (5,5,6,'CERRADA','Jefe de Operaciones',TO_DATE('2025-01-20','YYYY-MM-DD'),'Proceso cerrado, candidato notificado del resultado.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (6,6,3,'INFORME_GENERADO','Ingeniero de Proyectos',TO_DATE('2025-02-15','YYYY-MM-DD'),'Informe psicolaboral generado y disponible para revision.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (7,7,4,'PENDIENTE','Desarrollador de Software',TO_DATE('2025-03-18','YYYY-MM-DD'),'Solicitud recibida, evaluacion aun no iniciada.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (8,8,1,'EN_PROCESO','Ejecutivo de Ventas',TO_DATE('2025-03-08','YYYY-MM-DD'),'Entrevista realizada, informe en elaboracion.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (9,9,6,'RECHAZADA','Analista Contable',TO_DATE('2025-02-01','YYYY-MM-DD'),'Candidato no cumple con el perfil requerido para el cargo.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (10,10,3,'PENDIENTE','Asistente Administrativo',TO_DATE('2025-03-20','YYYY-MM-DD'),'Solicitud recibida, evaluacion aun no iniciada.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (11,11,4,'INFORME_GENERADO','Ingeniero de Proyectos',TO_DATE('2025-02-25','YYYY-MM-DD'),'Informe psicolaboral generado y disponible para revision.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (12,12,1,'CERRADA','Jefe de Operaciones',TO_DATE('2025-01-15','YYYY-MM-DD'),'Proceso cerrado, candidato notificado del resultado.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (13,13,6,'EN_PROCESO','Desarrollador de Software',TO_DATE('2025-03-10','YYYY-MM-DD'),'Entrevista realizada, informe en elaboracion.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (14,14,3,'PENDIENTE','Ejecutivo de Ventas',TO_DATE('2025-03-22','YYYY-MM-DD'),'Solicitud recibida, evaluacion aun no iniciada.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (15,15,4,'INFORME_GENERADO','Analista Contable',TO_DATE('2025-02-28','YYYY-MM-DD'),'Informe psicolaboral generado y disponible para revision.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (16,1,1,'EN_PROCESO','Desarrollador de Software',TO_DATE('2025-03-14','YYYY-MM-DD'),'Entrevista realizada, informe en elaboracion.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (17,3,6,'CERRADA','Ejecutivo de Ventas',TO_DATE('2025-01-30','YYYY-MM-DD'),'Proceso cerrado, candidato notificado del resultado.');
INSERT INTO "Evaluación_Psicolaboral" ("id_eva","id_can","id_user_emp","std_eva","cargo_post","fecha_eva","obs_eva") VALUES (18,5,4,'RECHAZADA','Jefe de Operaciones',TO_DATE('2025-02-05','YYYY-MM-DD'),'Candidato no cumple con el perfil requerido para el cargo.');
 
-- ============================================================
-- 8) Datos_solicitud  (FK -> candidato, Usuario_Empresa y Evaluación_Psicolaboral)
--    Cada solicitud referencia una evaluacion existente (id_eva 1..18).
-- ============================================================
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (1,1,1,1,TO_DATE('2025-03-01','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (2,2,3,2,TO_DATE('2025-03-04','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (3,3,4,3,TO_DATE('2025-02-08','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (4,4,1,4,TO_DATE('2025-03-10','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (5,5,6,5,TO_DATE('2025-01-18','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (6,6,3,6,TO_DATE('2025-02-13','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (7,7,4,7,TO_DATE('2025-03-16','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (8,8,1,8,TO_DATE('2025-03-06','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (9,9,6,9,TO_DATE('2025-01-28','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (10,10,3,10,TO_DATE('2025-03-18','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (11,11,4,11,TO_DATE('2025-02-22','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (12,12,1,12,TO_DATE('2025-01-12','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (13,13,6,13,TO_DATE('2025-03-07','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (14,14,3,14,TO_DATE('2025-03-20','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (15,15,4,15,TO_DATE('2025-02-26','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (16,1,1,16,TO_DATE('2025-03-12','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (17,3,6,17,TO_DATE('2025-01-27','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
INSERT INTO "Datos_solicitud" ("id_soli","id_can","id_user","id_eva","fecha_soli","obs_soli") VALUES (18,5,4,18,TO_DATE('2025-02-03','YYYY-MM-DD'),'Ingreso de solicitud para evaluar al candidato en el cargo postulado.');
 
COMMIT;
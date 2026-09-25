-- ============================================================
-- MODELO RELACIONAL - PROYECTO AUTOMATIZACIÓN
-- Fuente: Diagrama.txt + Proyecto Automatización.docx
-- Compatible con Oracle SQL Developer Data Modeler (Import DDL)
-- ============================================================

-- ============================================================
-- TABLA: Usuario_Empresa
-- ============================================================
CREATE TABLE "Usuario_Empresa" (
    "user_id_emp"       NUMBER(10)        NOT NULL,
    "rut_user"          VARCHAR2(20)      NOT NULL,
    "rut_v_user"        VARCHAR2(20)      NOT NULL,
    "pri_nombre_user"   VARCHAR2(100)     NOT NULL,
    "seg_nombre_user"   VARCHAR2(100),
    "pri_apellido_user" VARCHAR2(100)     NOT NULL,
    "seg_apellido_user" VARCHAR2(100)     NOT NULL,
    "email_user"        VARCHAR2(150),
    "alt_email_user"    VARCHAR2(150),
    CONSTRAINT "PK_Usuario_Empresa" PRIMARY KEY ("user_id_emp")
);

-- ============================================================
-- TABLA: Rol
-- ============================================================
CREATE TABLE "Rol" (
    "id_rol" NUMBER(10)       NOT NULL,
    "n_rol"  VARCHAR2(100)    NOT NULL,
    CONSTRAINT "PK_Rol" PRIMARY KEY ("id_rol")
);

-- ============================================================
-- TABLA: User_rol
-- Tabla asociativa entre Usuario_Empresa y Rol
-- ============================================================
CREATE TABLE "User_rol" (
    "id_rol"  NUMBER(10) NOT NULL,
    "user_id" NUMBER(10) NOT NULL,
    CONSTRAINT "PK_User_rol" PRIMARY KEY ("id_rol", "user_id"),
    CONSTRAINT "FK_User_rol_Rol"
        FOREIGN KEY ("id_rol")
        REFERENCES "Rol" ("id_rol"),
    CONSTRAINT "FK_User_rol_Usuario"
        FOREIGN KEY ("user_id")
        REFERENCES "Usuario_Empresa" ("user_id_emp")
);

-- ============================================================
-- TABLA: Cargo
-- ============================================================
CREATE TABLE "Cargo" (
    "id_car"     NUMBER(10)       NOT NULL,
    "nombre_car" VARCHAR2(150)    NOT NULL,
    "perfil_req" VARCHAR2(4000),
    CONSTRAINT "PK_Cargo" PRIMARY KEY ("id_car")
);

-- ============================================================
-- TABLA: candidato
-- ============================================================
CREATE TABLE "candidato" (
    "id_can"       NUMBER(10)       NOT NULL,
    "pri_nom_can"  VARCHAR2(100)    NOT NULL,
    "seg_nom_can"  VARCHAR2(100),
    "pri_apll_can" VARCHAR2(100)    NOT NULL,
    "seg_apll_can" VARCHAR2(100)    NOT NULL,
    "tel_can"      VARCHAR2(30)     NOT NULL,
    "pri_email_can" VARCHAR2(150)   NOT NULL,
    "seg_email_can" VARCHAR2(150),
    CONSTRAINT "PK_candidato" PRIMARY KEY ("id_can")
);

-- ============================================================
-- TABLA: consulta_estado
-- ============================================================
CREATE TABLE "consulta_estado" (
    "id_estado_cons" NUMBER(10)       NOT NULL,
    "nom_estado"     VARCHAR2(100)    NOT NULL,
    CONSTRAINT "PK_consulta_estado" PRIMARY KEY ("id_estado_cons")
);

-- ============================================================
-- TABLA: Evaluación_Psicolaboral
-- ============================================================
CREATE TABLE "Evaluación_Psicolaboral" (
    "id_eva"      NUMBER(10)        NOT NULL,
    "id_can"      NUMBER(10)        NOT NULL,
    "id_user_emp" NUMBER(10)        NOT NULL,
    "std_eva"     VARCHAR2(100)     NOT NULL,
    "cargo_post"  VARCHAR2(150)     NOT NULL,
    "fecha_eva"   DATE              NOT NULL,
    "obs_eva"     VARCHAR2(4000)    NOT NULL,
    CONSTRAINT "PK_Evaluacion_Psicolaboral" PRIMARY KEY ("id_eva"),
    CONSTRAINT "FK_Evaluacion_Candidato"
        FOREIGN KEY ("id_can")
        REFERENCES "candidato" ("id_can"),
    CONSTRAINT "FK_Evaluacion_Usuario"
        FOREIGN KEY ("id_user_emp")
        REFERENCES "Usuario_Empresa" ("user_id_emp")
);

-- ============================================================
-- TABLA: Datos_solicitud
-- ============================================================
CREATE TABLE "Datos_solicitud" (
    "id_soli"  NUMBER(10)        NOT NULL,
    "id_can"   NUMBER(10)        NOT NULL,
    "id_user"  NUMBER(10)        NOT NULL,
    "id_eva"   NUMBER(10)        NOT NULL,
    "fecha_soli" DATE             NOT NULL,
    "obs_soli" VARCHAR2(4000)    NOT NULL,
    CONSTRAINT "PK_Datos_solicitud" PRIMARY KEY ("id_soli"),
    CONSTRAINT "FK_Solicitud_Candidato"
        FOREIGN KEY ("id_can")
        REFERENCES "candidato" ("id_can"),
    CONSTRAINT "FK_Solicitud_Usuario"
        FOREIGN KEY ("id_user")
        REFERENCES "Usuario_Empresa" ("user_id_emp"),
    CONSTRAINT "FK_Solicitud_Evaluacion"
        FOREIGN KEY ("id_eva")
        REFERENCES "Evaluación_Psicolaboral" ("id_eva")
);

-- ============================================================
-- RELACIONES MODELADAS DESDE LAS LLAVES DEL DIAGRAMA
-- ============================================================
-- Usuario_Empresa 1 --- N User_rol
-- Rol             1 --- N User_rol
-- Usuario_Empresa 1 --- N Evaluación_Psicolaboral
-- candidato       1 --- N Evaluación_Psicolaboral
-- Usuario_Empresa 1 --- N Datos_solicitud
-- candidato       1 --- N Datos_solicitud
-- Evaluación_Psicolaboral 1 --- N Datos_solicitud

-- ============================================================
-- OBSERVACIONES
-- ============================================================
-- 1. Cargo y consulta_estado no tienen una FK explícita en
--    Diagrama.txt, por lo que no se fuerza una relación física.
--
-- 2. "cargo_post" en Evaluación_Psicolaboral representa el cargo
--    como texto. No se vincula con Cargo.id_car porque el diagrama
--    original no define esa FK.
--
-- 3. "std_eva" podría representar un estado, pero no se fuerza
--    FK hacia consulta_estado porque el diagrama no lo especifica.
--
-- 4. El proyecto indica que la solicitud inicia el flujo de evaluación,
--    que los datos se almacenan y luego se genera/revisa el informe.
-- ============================================================

-- Table: workflow.wf_solicitudes

-- DROP TABLE workflow.wf_solicitudes;

CREATE TABLE workflow.wf_solicitudes
(
    id_solicitud character varying(10) COLLATE pg_catalog."default" NOT NULL,
    id_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_usuario numeric NOT NULL,
    estado boolean NOT NULL,
    fecha_ingreso date NOT NULL,
    fecha_termino date,
    id_etapa_actual character varying(50) COLLATE pg_catalog."default",
    nombre_solicita character varying(150) COLLATE pg_catalog."default",
    id_iden_solicita character varying(20) COLLATE pg_catalog."default",
    finalizado character varying(1) COLLATE pg_catalog."default",
    observacion character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT wf_solicitudes_pkey PRIMARY KEY (id_solicitud),
    CONSTRAINT fk_procesos FOREIGN KEY (id_proceso)
        REFERENCES workflow.wf_procesos (id_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_usuarios FOREIGN KEY (id_usuario)
        REFERENCES security.sc_usuarios (id_usuario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_solicitudes
    OWNER to postgres;
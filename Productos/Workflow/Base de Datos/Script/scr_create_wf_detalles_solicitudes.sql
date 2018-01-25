-- Table: workflow.wf_detalles_solicitudes

-- DROP TABLE workflow.wf_detalles_solicitudes;

CREATE TABLE workflow.wf_detalles_solicitudes
(
    id_detalle_solicitud numeric NOT NULL,
    id_solicitud character varying(10) COLLATE pg_catalog."default" NOT NULL,
    id_usuario numeric NOT NULL,
    id_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_etapa_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    item character varying(100) COLLATE pg_catalog."default",
    nombre_funcion character varying(100) COLLATE pg_catalog."default",
    fecha_registro date,
    valor character varying(250) COLLATE pg_catalog."default",
    nombre_parametro_funcion character varying(100) COLLATE pg_catalog."default",
    obligatorio character varying(2) COLLATE pg_catalog."default",
    fecha_termino date,
    CONSTRAINT wf_detalles_solicitudes_pkey PRIMARY KEY (id_detalle_solicitud),
    CONSTRAINT fk_etapas_procesos FOREIGN KEY (id_etapa_proceso)
        REFERENCES workflow.wf_etapas_procesos (id_etapa_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_procesos FOREIGN KEY (id_proceso)
        REFERENCES workflow.wf_procesos (id_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_solicitudes FOREIGN KEY (id_solicitud)
        REFERENCES workflow.wf_solicitudes (id_solicitud) MATCH SIMPLE
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

ALTER TABLE workflow.wf_detalles_solicitudes
    OWNER to postgres;
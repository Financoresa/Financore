-- Table: workflow.wf_ejecuciones_etapas

-- DROP TABLE workflow.wf_ejecuciones_etapas;

CREATE TABLE workflow.wf_ejecuciones_etapas
(
    id_ejecucion_etapa numeric NOT NULL,
    id_solicitud character varying(10) COLLATE pg_catalog."default" NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date,
    descripcion character varying(100) COLLATE pg_catalog."default",
    estado boolean,
    CONSTRAINT wf_ejecuciones_etapas_pkey PRIMARY KEY (id_ejecucion_etapa),
    CONSTRAINT fk_solicitudes FOREIGN KEY (id_solicitud)
        REFERENCES workflow.wf_solicitudes (id_solicitud) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_ejecuciones_etapas
    OWNER to postgres;
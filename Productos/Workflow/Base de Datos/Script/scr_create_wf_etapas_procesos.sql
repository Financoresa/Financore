-- Table: workflow.wf_etapas_procesos

-- DROP TABLE workflow.wf_etapas_procesos;

CREATE TABLE workflow.wf_etapas_procesos
(
    id_etapa_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default" NOT NULL,
    estado boolean NOT NULL,
    tiempo_termino numeric,
    tipo_tiempo character varying(2) COLLATE pg_catalog."default",
    num_etapa numeric NOT NULL,
    observacion character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT wf_etapas_procesos_pkey PRIMARY KEY (id_etapa_proceso),
    CONSTRAINT fk_procesos FOREIGN KEY (id_proceso)
        REFERENCES workflow.wf_procesos (id_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_etapas_procesos
    OWNER to postgres;
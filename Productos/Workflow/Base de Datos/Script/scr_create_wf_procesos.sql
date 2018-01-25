-- Table: workflow.wf_procesos

-- DROP TABLE workflow.wf_procesos;

CREATE TABLE workflow.wf_procesos
(
    id_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default" NOT NULL,
    estado boolean NOT NULL,
    tiempo_termino numeric NOT NULL,
    tipo_tiempo character varying(2) COLLATE pg_catalog."default",
    CONSTRAINT wf_procesos_pkey PRIMARY KEY (id_proceso)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_procesos
    OWNER to postgres;
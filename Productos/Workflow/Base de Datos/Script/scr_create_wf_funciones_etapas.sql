-- Table: workflow.wf_funciones_etapas

-- DROP TABLE workflow.wf_funciones_etapas;

CREATE TABLE workflow.wf_funciones_etapas
(
    id_funcion_etapa numeric NOT NULL,
    id_etapa_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nombre_funcion character varying(100) COLLATE pg_catalog."default" NOT NULL,
    ejecuta_automatico character varying(2) COLLATE pg_catalog."default",
    estado boolean NOT NULL,
    ejecuta_antes character varying(2) COLLATE pg_catalog."default",
    CONSTRAINT wf_funciones_etapas_pkey PRIMARY KEY (id_funcion_etapa),
    CONSTRAINT fk_etapas_procesos FOREIGN KEY (id_etapa_proceso)
        REFERENCES workflow.wf_etapas_procesos (id_etapa_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_funciones_etapas
    OWNER to postgres;
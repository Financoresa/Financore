-- Table: workflow.wf_etapas_correos

-- DROP TABLE workflow.wf_etapas_correos;

CREATE TABLE workflow.wf_etapas_correos
(
    id_etapa_correo numeric NOT NULL,
    id_etapa_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    destinatario character varying(100) COLLATE pg_catalog."default" NOT NULL,
    asunto character varying(100) COLLATE pg_catalog."default" NOT NULL,
    contenido character varying(250) COLLATE pg_catalog."default" NOT NULL,
    adjunto character varying(2) COLLATE pg_catalog."default",
    copia character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT wf_etapas_correos_pkey PRIMARY KEY (id_etapa_correo),
    CONSTRAINT fk_etapas_procesos FOREIGN KEY (id_etapa_proceso)
        REFERENCES workflow.wf_etapas_procesos (id_etapa_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_etapas_correos
    OWNER to postgres;
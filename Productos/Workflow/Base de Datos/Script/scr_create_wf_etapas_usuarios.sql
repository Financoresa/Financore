-- Table: workflow.wf_etapas_usuarios

-- DROP TABLE workflow.wf_etapas_usuarios;

CREATE TABLE workflow.wf_etapas_usuarios
(
    id_etapa_usuario numeric NOT NULL,
    id_usuario numeric NOT NULL,
    id_etapa_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    id_proceso character varying(50) COLLATE pg_catalog."default" NOT NULL,
    descripcion character varying(100) COLLATE pg_catalog."default" NOT NULL,
    estado boolean NOT NULL,
    CONSTRAINT wf_etapas_usuarios_pkey PRIMARY KEY (id_etapa_usuario),
    CONSTRAINT fk_etapas_procesos FOREIGN KEY (id_etapa_proceso)
        REFERENCES workflow.wf_etapas_procesos (id_etapa_proceso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
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

ALTER TABLE workflow.wf_etapas_usuarios
    OWNER to postgres;
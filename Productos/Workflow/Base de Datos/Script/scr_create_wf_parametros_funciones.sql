-- Table: workflow.wf_parametros_funciones

-- DROP TABLE workflow.wf_parametros_funciones;

CREATE TABLE workflow.wf_parametros_funciones
(
    id_parametro_funcion numeric NOT NULL,
    id_funcion_etapa numeric NOT NULL,
    nombre_parametro character varying(100) COLLATE pg_catalog."default" NOT NULL,
    tipo_dato character varying(2) COLLATE pg_catalog."default" NOT NULL,
    estado boolean NOT NULL,
    CONSTRAINT wf_parametros_funciones_pkey PRIMARY KEY (id_parametro_funcion),
    CONSTRAINT fk_funciones_etapas FOREIGN KEY (id_funcion_etapa)
        REFERENCES workflow.wf_funciones_etapas (id_funcion_etapa) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE workflow.wf_parametros_funciones
    OWNER to postgres;
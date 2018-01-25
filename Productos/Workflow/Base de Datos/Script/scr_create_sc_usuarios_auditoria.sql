-- Table: security.sc_usuarios_auditoria

-- DROP TABLE security.sc_usuarios_auditoria;

CREATE TABLE security.sc_usuarios_auditoria
(
    id_usuario_auditoria numeric NOT NULL,
    id_usuario numeric NOT NULL,
    ip_maquina character varying(20) COLLATE pg_catalog."default" NOT NULL,
    fecha_ingreso date NOT NULL,
    CONSTRAINT sc_usuarios_auditoria_pkey PRIMARY KEY (id_usuario_auditoria),
    CONSTRAINT fk_usuarios FOREIGN KEY (id_usuario)
        REFERENCES security.sc_usuarios (id_usuario) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE security.sc_usuarios_auditoria
    OWNER to postgres;
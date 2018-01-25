-- Table: security.sc_usuarios

-- DROP TABLE security.sc_usuarios;

CREATE TABLE security.sc_usuarios
(
    id_usuario numeric NOT NULL,
    id_persona numeric NOT NULL,
    usuario character varying(50) COLLATE pg_catalog."default" NOT NULL,
    contrasenia character varying(250) COLLATE pg_catalog."default" NOT NULL,
    estado boolean NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_actualizacion date NOT NULL,
    id_usuario_creador numeric NOT NULL,
    CONSTRAINT sc_usuarios_pkey PRIMARY KEY (id_usuario),
    CONSTRAINT fk_personas FOREIGN KEY (id_persona)
	REFERENCES security.sc_personas (id_persona) MATCH SIMPLE
	ON UPDATE NO ACTION
	ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE security.sc_usuarios
    OWNER to postgres;
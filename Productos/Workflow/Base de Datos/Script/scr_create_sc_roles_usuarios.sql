-- Table: security.sc_roles_usuarios

-- DROP TABLE security.sc_roles_usuarios;

CREATE TABLE security.sc_roles_usuarios
(
    id_rol_usuario numeric NOT NULL,
    id_rol numeric NOT NULL,
    id_usuario numeric NOT NULL,
    estado boolean NOT NULL,
    CONSTRAINT sc_roles_usuarios_pkey PRIMARY KEY (id_rol_usuario),
    CONSTRAINT fk_roles FOREIGN KEY (id_rol)
        REFERENCES security.sc_roles (id_rol) MATCH SIMPLE
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

ALTER TABLE security.sc_roles_usuarios
    OWNER to postgres;
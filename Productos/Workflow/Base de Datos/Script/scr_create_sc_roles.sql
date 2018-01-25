CREATE TABLE security.sc_roles
(
    id_rol numeric NOT NULL,
    descripcion character varying(50) NOT NULL,
    estado boolean NOT NULL,
    fecha_creacion date NOT NULL,
    PRIMARY KEY (id_rol)
)
WITH (
    OIDS = FALSE
);

ALTER TABLE security.sc_roles
    OWNER to postgres;
	
-- Constraint: sc_roles_pkey

-- ALTER TABLE security.sc_roles DROP CONSTRAINT sc_roles_pkey;

ALTER TABLE security.sc_roles
    ADD CONSTRAINT sc_roles_pkey PRIMARY KEY (id_rol);

	
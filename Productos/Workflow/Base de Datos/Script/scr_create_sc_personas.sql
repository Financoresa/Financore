CREATE TABLE security.sc_personas
(
    id_persona numeric NOT NULL,
    nombres character varying(50) NOT NULL,
    apellidos character varying(100) NOT NULL,
    identificacion character varying(15) NOT NULL,
    genero character varying(1) NOT NULL,
    email character varying(50) NOT NULL,
    telefono character varying(10) NOT NULL,
    direccion character varying(100) NOT NULL,
    estado boolean NOT NULL,
    fecha_creacion date NOT NULL,
    fecha_actualizacion date NOT NULL,
    PRIMARY KEY (id_persona)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE security.sc_personas
    OWNER to postgres;
	
-- Constraint: sc_personas_pkey

-- ALTER TABLE security.sc_personas DROP CONSTRAINT sc_personas_pkey;

ALTER TABLE security.sc_personas
    ADD CONSTRAINT sc_personas_pkey PRIMARY KEY (id_persona);

	
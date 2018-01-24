-- SCHEMA: security

-- DROP SCHEMA "security" ;

CREATE SCHEMA security
    AUTHORIZATION postgres;

COMMENT ON SCHEMA security
    IS 'Esquema para las tablas de modulo de seguridad.';
	
-- SCHEMA: workflow

-- DROP SCHEMA workflow ;

CREATE SCHEMA workflow
    AUTHORIZATION postgres;

COMMENT ON SCHEMA workflow
    IS 'Esquema que contiene las tablas de mapeo y configuracion de la automatizacion de procesos.';
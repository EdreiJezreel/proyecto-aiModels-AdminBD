CREATE TABLESPACE ts_ai_models
LOCATION '/var/lib/postgresql/tablespaces/ts1';

-- Verificacion: tamano y ruta de cada tablespace del cluster

SELECT
    spcname                                     AS tablespace,
    PG_SIZE_PRETTY(PG_TABLESPACE_SIZE(spcname)) AS tamanio,
    PG_TABLESPACE_LOCATION(oid)                 AS ubicacion
FROM pg_tablespace;
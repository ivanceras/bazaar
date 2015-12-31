-- Table: bazaar.client

-- DROP TABLE bazaar.client;

CREATE TABLE bazaar.client
(
-- Inherited from table system.record:  organization_id uuid,
  client_id uuid NOT NULL DEFAULT uuid_generate_v4(),
-- Inherited from table system.record:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  created_by uuid,
-- Inherited from table system.record:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  updated_by uuid,
-- Inherited from table system.record:  priority double precision,
-- Inherited from table system.record:  name character varying,
-- Inherited from table system.record:  description character varying,
-- Inherited from table system.record:  help text,
-- Inherited from table system.record:  active boolean NOT NULL DEFAULT true,
  CONSTRAINT client_pkey PRIMARY KEY (client_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.client
  OWNER TO postgres;


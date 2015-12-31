-- Table: bazaar.api_key

-- DROP TABLE bazaar.api_key;

CREATE TABLE bazaar.api_key
(
-- Inherited from table system.record:  organization_id uuid,
-- Inherited from table system.record:  client_id uuid,
-- Inherited from table system.record:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  created_by uuid,
-- Inherited from table system.record:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  updated_by uuid,
-- Inherited from table system.record:  priority double precision,
-- Inherited from table system.record:  name character varying,
-- Inherited from table system.record:  description character varying,
-- Inherited from table system.record:  help text,
-- Inherited from table system.record:  active boolean NOT NULL DEFAULT true,
  api_key_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  api_key character varying NOT NULL,
  user_id uuid NOT NULL,
  valid_starting timestamp with time zone,
  valid_until timestamp with time zone,
  CONSTRAINT api_key_pkey PRIMARY KEY (api_key_id)--,
--  CONSTRAINT api_key_user_id_fkey FOREIGN KEY (user_id)
--      REFERENCES bazaar.users (user_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.api_key
  OWNER TO postgres;


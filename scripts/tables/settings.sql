-- Table: bazaar.settings

-- DROP TABLE bazaar.settings;

CREATE TABLE bazaar.settings
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
  user_id uuid,
  value text[],
  settings_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  use_metric boolean DEFAULT true, -- Use metric system as unit, if false, use english system
  CONSTRAINT settings_pkey PRIMARY KEY (settings_id)--,
--  CONSTRAINT settings_user_id_fkey FOREIGN KEY (user_id)
--      REFERENCES bazaar.users (user_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.settings
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.settings.use_metric IS 'Use metric system as unit, if false, use english system';



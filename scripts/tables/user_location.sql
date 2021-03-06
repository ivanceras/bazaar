-- Table: bazaar.user_location

-- DROP TABLE bazaar.user_location;

CREATE TABLE bazaar.user_location
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
  true_latitude double precision,
  true_longitude double precision,
  set_latitude double precision,
  set_longitude double precision,
  accuracy double precision,
  set_accuracy double precision, -- user can anonymize their location by setting loose accuracy
  user_id uuid NOT NULL,
  CONSTRAINT user_location_pkey PRIMARY KEY (user_id)--,
--  CONSTRAINT user_location_user_id_fkey FOREIGN KEY (user_id)
--      REFERENCES bazaar.users (user_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.user_location
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.user_location.set_accuracy IS 'user can anonymize their location by setting loose accuracy';



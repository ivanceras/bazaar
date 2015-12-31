-- Table: bazaar.address

-- DROP TABLE bazaar.address;

CREATE TABLE bazaar.address
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
  address_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  latitude double precision,
  longitude double precision,
  distance double precision, -- distance is computed on the fly using the formula in sql, this is here to provide a property on the Models to store the value
  CONSTRAINT address_pkey PRIMARY KEY (address_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.address
  OWNER TO postgres;
COMMENT ON TABLE bazaar.address
  IS '@Address';
COMMENT ON COLUMN bazaar.address.distance IS 'distance is computed on the fly using the formula in sql, this is here to provide a property on the Models to store the value';



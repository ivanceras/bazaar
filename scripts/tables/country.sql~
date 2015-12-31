-- Table: payment.country

-- DROP TABLE payment.country;

CREATE TABLE payment.country
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
  country_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  code character varying,
  CONSTRAINT country_pkey PRIMARY KEY (country_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE payment.country
  OWNER TO postgres;


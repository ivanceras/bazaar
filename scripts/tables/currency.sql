-- Table: payment.currency

-- DROP TABLE payment.currency;

CREATE TABLE payment.currency
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
  currency_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  country_id uuid, -- which country uses this currency
  symbol character varying,
  unicode character varying,
  CONSTRAINT currency_pkey PRIMARY KEY (currency_id)--,
--  CONSTRAINT currency_country_id_fkey FOREIGN KEY (country_id)
--      REFERENCES payment.country (country_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE payment.currency
  OWNER TO postgres;
COMMENT ON COLUMN payment.currency.country_id IS 'which country uses this currency';



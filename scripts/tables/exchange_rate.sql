-- Table: payment.exchange_rate

-- DROP TABLE payment.exchange_rate;

CREATE TABLE payment.exchange_rate
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
  exchange_rate_id uuid NOT NULL DEFAULT uuid_generate_v4(), -- this will be referred when processing payments with different currencies
  from_currency uuid,
  exchange_rate double precision,
  to_currency uuid,
  CONSTRAINT exchange_rate_id_pkey PRIMARY KEY (exchange_rate_id)--,
--  CONSTRAINT exchange_rate_from_currency_fkey FOREIGN KEY (from_currency)
--      REFERENCES payment.currency (currency_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT exchange_rate_to_currency_fkey FOREIGN KEY (to_currency)
--      REFERENCES payment.currency (currency_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE payment.exchange_rate
  OWNER TO postgres;
COMMENT ON COLUMN payment.exchange_rate.exchange_rate_id IS 'this will be referred when processing payments with different currencies';



-- Table: bazaar.order_line

-- DROP TABLE bazaar.order_line;

CREATE TABLE bazaar.order_line
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
  order_id uuid,
  product_id uuid,
  price_momentary double precision,
  freight_amt double precision,
  discount double precision,
  order_line_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  qty_ordered double precision,
  CONSTRAINT order_line_pkey PRIMARY KEY (order_line_id)--,
--  CONSTRAINT order_line_order_id_fkey FOREIGN KEY (order_id)
--      REFERENCES bazaar.orders (order_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.order_line
  OWNER TO postgres;


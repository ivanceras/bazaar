-- Table: bazaar.cart_line

-- DROP TABLE bazaar.cart_line;

CREATE TABLE bazaar.cart_line
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
  cart_id uuid,
  cart_line_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  product_id uuid,
  qty double precision,
  CONSTRAINT cart_line_pkey PRIMARY KEY (cart_line_id)--,
--  CONSTRAINT cart_line_cart_id_fkey FOREIGN KEY (cart_id)
--      REFERENCES bazaar.cart (cart_id) MATCH SIMPLE
--      ON UPDATE NO ACTION ON DELETE NO ACTION
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.cart_line
  OWNER TO postgres;


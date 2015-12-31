-- Table: bazaar.orders

-- DROP TABLE bazaar.orders;

CREATE TABLE bazaar.orders
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
  order_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  customer_name character varying, -- For recognization purposes, this is the name shown to the seller
  total_items integer,
  grand_total_amount double precision,
  charges_amount double precision DEFAULT 0.00,
  processing boolean DEFAULT false,
  processed boolean DEFAULT false,
  is_confirmed boolean DEFAULT false, -- determined whether the order has been confirmed by the person who ordered it
  is_tax_included boolean DEFAULT true,
  date_ordered timestamp with time zone DEFAULT now(),
  is_invoiced boolean DEFAULT false,
  date_invoiced timestamp with time zone,
  is_approved boolean DEFAULT false, -- if the order from the buyer is approved by the seller
  date_approved timestamp with time zone,
  amount_tendered double precision,
  amount_refunded double precision,
  cart_id uuid, -- The cart from which this order was created from
  CONSTRAINT order_pkey PRIMARY KEY (order_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.orders
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.orders.customer_name IS 'For recognization purposes, this is the name shown to the seller';
COMMENT ON COLUMN bazaar.orders.is_confirmed IS 'determined whether the order has been confirmed by the person who ordered it';
COMMENT ON COLUMN bazaar.orders.is_approved IS 'if the order from the buyer is approved by the seller';
COMMENT ON COLUMN bazaar.orders.cart_id IS 'The cart from which this order was created from';



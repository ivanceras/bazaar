-- Table: bazaar.wishlist_line

-- DROP TABLE bazaar.wishlist_line;

CREATE TABLE bazaar.wishlist_line
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
  wishlist_id uuid,
  price_momentary double precision,
  product_id uuid,
  added_to_cart boolean DEFAULT false,
  wishlist_line_id uuid NOT NULL,
  CONSTRAINT wishlist_line_pkey PRIMARY KEY (wishlist_line_id)--,
--  CONSTRAINT wishlist_line_wishlist_id_fkey FOREIGN KEY (wishlist_id)
--      REFERENCES bazaar.wishlist (wishlist_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.wishlist_line
  OWNER TO postgres;


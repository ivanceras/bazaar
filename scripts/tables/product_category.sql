-- Table: bazaar.product_category

-- DROP TABLE bazaar.product_category;

CREATE TABLE bazaar.product_category
(
-- Inherited from table system.base:  organization_id uuid,
-- Inherited from table system.base:  client_id uuid,
-- Inherited from table system.base:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  created_by uuid,
-- Inherited from table system.base:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  updated_by uuid,
-- Inherited from table system.base:  priority double precision,
  product_id uuid NOT NULL,
  category_id uuid NOT NULL,
  CONSTRAINT product_category_pkey PRIMARY KEY (product_id, category_id)--,
--  CONSTRAINT product_category_category_id_fkey FOREIGN KEY (category_id)
--      REFERENCES bazaar.category (category_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT product_category_product_id_fkey FOREIGN KEY (product_id)
--      REFERENCES bazaar.product (product_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.base)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.product_category
  OWNER TO postgres;


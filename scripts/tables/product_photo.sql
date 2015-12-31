-- Table: bazaar.product_photo

-- DROP TABLE bazaar.product_photo;

CREATE TABLE bazaar.product_photo
(
-- Inherited from table system.base:  organization_id uuid,
-- Inherited from table system.base:  client_id uuid,
-- Inherited from table system.base:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  created_by uuid,
-- Inherited from table system.base:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  updated_by uuid,
-- Inherited from table system.base:  priority double precision,
  product_id uuid NOT NULL,
  photo_id uuid NOT NULL,
  CONSTRAINT product_photo_pkey PRIMARY KEY (product_id, photo_id)--,
--  CONSTRAINT product_photo_photo_id_fkey FOREIGN KEY (photo_id)
--      REFERENCES bazaar.photo (photo_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT product_photo_product_id_fkey FOREIGN KEY (product_id)
--      REFERENCES bazaar.product (product_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.base)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.product_photo
  OWNER TO postgres;


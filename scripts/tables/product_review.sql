-- Table: bazaar.product_review

-- DROP TABLE bazaar.product_review;

CREATE TABLE bazaar.product_review
(
-- Inherited from table system.base:  organization_id uuid,
-- Inherited from table system.base:  client_id uuid,
-- Inherited from table system.base:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  created_by uuid,
-- Inherited from table system.base:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  updated_by uuid,
-- Inherited from table system.base:  priority double precision,
  product_id uuid NOT NULL,
  review_id uuid NOT NULL,
  CONSTRAINT product_review_pkey PRIMARY KEY (product_id, review_id)--,
--  CONSTRAINT product_review_product_id_fkey FOREIGN KEY (product_id)
--      REFERENCES bazaar.product (product_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT product_review_review_id_fkey FOREIGN KEY (review_id)
--      REFERENCES bazaar.review (review_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.base)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.product_review
  OWNER TO postgres;


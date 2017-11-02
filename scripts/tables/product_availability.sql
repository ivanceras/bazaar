-- Table: bazaar.product_availability

-- DROP TABLE bazaar.product_availability;

CREATE TABLE bazaar.product_availability
(
-- Inherited from table system.base:  organization_id uuid,
-- Inherited from table system.base:  client_id uuid,
-- Inherited from table system.base:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  created_by uuid,
-- Inherited from table system.base:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  updated_by uuid,
-- Inherited from table system.base:  priority double precision,
  product_id uuid NOT NULL,
  available boolean,
  always_available boolean,
  stocks double precision DEFAULT 1,
  available_from timestamp with time zone,
  available_until timestamp with time zone,
  available_day text[], -- {"Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"}
  open_time time with time zone,
  close_time time with time zone,
  CONSTRAINT product_availability_pkey PRIMARY KEY (product_id)--,
 -- CONSTRAINT product_availability_product_id_fkey FOREIGN KEY (product_id)
 --     REFERENCES bazaar.product (product_id) MATCH SIMPLE
 --     ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.base)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.product_availability
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.product_availability.available_day IS '{"Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun"}';



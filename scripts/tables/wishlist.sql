-- Table: bazaar.wishlist

-- DROP TABLE bazaar.wishlist;

CREATE TABLE bazaar.wishlist
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
  wishlist_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  CONSTRAINT wishlist_pkey PRIMARY KEY (wishlist_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.wishlist
  OWNER TO postgres;


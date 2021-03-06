-- Table: bazaar.photo_sizes

-- DROP TABLE bazaar.photo_sizes;

CREATE TABLE bazaar.photo_sizes
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
  width integer,
  height integer,
  data character varying, -- The base64 encoding of this photo, optimized to this size
  url character varying,
  photo_id uuid NOT NULL,
  photo_size_id uuid NOT NULL,
  CONSTRAINT photo_sizes_pkey PRIMARY KEY (photo_id, photo_size_id)--,
--  CONSTRAINT photo_sizes_photo_id_fkey FOREIGN KEY (photo_id)
--      REFERENCES bazaar.photo (photo_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.photo_sizes
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.photo_sizes.data IS 'The base64 encoding of this photo, optimized to this size';



-- Table: bazaar.photo

-- DROP TABLE bazaar.photo;

CREATE TABLE bazaar.photo
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
  photo_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  url character varying, -- The online version of the photo, could be hosted in cdn somewhere else, to avoid payloads in the system. The online photo can be cached by creating a base64 encoding, then storing it in the local db
  data character varying, -- The base64 encoding of the image, which can be stored in the database
  seq_no integer,
  CONSTRAINT photo_pkey PRIMARY KEY (photo_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.photo
  OWNER TO postgres;
COMMENT ON COLUMN bazaar.photo.url IS 'The online version of the photo, could be hosted in cdn somewhere else, to avoid payloads in the system. The online photo can be cached by creating a base64 encoding, then storing it in the local db';
COMMENT ON COLUMN bazaar.photo.data IS 'The base64 encoding of the image, which can be stored in the database';



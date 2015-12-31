-- Table: bazaar.user_info

-- DROP TABLE bazaar.user_info;

CREATE TABLE bazaar.user_info
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
  user_id uuid NOT NULL,
  address_id uuid,
  current_location character varying,
  displayname character varying,
  photo_id uuid,
  CONSTRAINT user_info_pkey PRIMARY KEY (user_id)--,
--  CONSTRAINT user_info_address_id_fkey FOREIGN KEY (address_id)
--      REFERENCES bazaar.address (address_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT user_info_photo_id_fkey FOREIGN KEY (photo_id)
--      REFERENCES bazaar.photo (photo_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT user_info_user_id_fkey FOREIGN KEY (user_id)
--      REFERENCES bazaar.users (user_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.user_info
  OWNER TO postgres;


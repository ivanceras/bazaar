-- Table: bazaar.organization

-- DROP TABLE bazaar.organization;

CREATE TABLE bazaar.organization
(
  organization_id uuid NOT NULL DEFAULT uuid_generate_v4(),
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
  parent_organization_id uuid,
  address_id uuid,
  landmark character varying,
  CONSTRAINT organization_pkey PRIMARY KEY (organization_id)--,
--  CONSTRAINT organization_parent_organization_id_fkey FOREIGN KEY (parent_organization_id)
--      REFERENCES bazaar.organization (organization_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.organization
  OWNER TO postgres;


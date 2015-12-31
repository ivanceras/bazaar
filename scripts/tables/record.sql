-- Table: system.record

-- DROP TABLE system.record;

CREATE TABLE system.record
(
-- Inherited from table system.base:  organization_id uuid,
-- Inherited from table system.base:  client_id uuid,
-- Inherited from table system.base:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  created_by uuid,
-- Inherited from table system.base:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.base:  updated_by uuid,
-- Inherited from table system.base:  priority double precision,
  name character varying,
  description character varying,
  help text,
  active boolean NOT NULL DEFAULT true -- @Active
)
INHERITS (system.base)
WITH (
  OIDS=FALSE
);
ALTER TABLE system.record
  OWNER TO postgres;
COMMENT ON TABLE system.record
  IS 'All User table should inherit from this one';
COMMENT ON COLUMN system.record.active IS '@Active';



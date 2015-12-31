-- Table: system.base

-- DROP TABLE system.base;

CREATE TABLE system.base
(
  organization_id uuid,
  client_id uuid,
  created timestamp with time zone NOT NULL DEFAULT now(),
  created_by uuid,
  updated timestamp with time zone NOT NULL DEFAULT now(),
  updated_by uuid,
  priority double precision -- priority of saving data and eviction
)
WITH (
  OIDS=FALSE
);
ALTER TABLE system.base
  OWNER TO postgres;
COMMENT ON TABLE system.base
  IS 'Base table contains the creation and modification status of a record';
COMMENT ON COLUMN system.base.priority IS 'priority of saving data and eviction';



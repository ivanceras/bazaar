-- Table: bazaar.category

-- DROP TABLE bazaar.category;

CREATE TABLE bazaar.category
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
  category_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  CONSTRAINT category_pkey PRIMARY KEY (category_id),
  CONSTRAINT category_name_key UNIQUE (name)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.category
  OWNER TO postgres;


-- Table: bazaar.users

-- DROP TABLE bazaar.users;

CREATE TABLE bazaar.users
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
-- Inherited from table system.record:  active boolean NOT NULL DEFAULT true, -- @Active
  user_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  username character varying, -- @Username...
  password character varying, -- The users' @Password will be check against the value, while you can also specify hashing alogrithm used of the value @Hash(SHA256), or just @SHA256....
  email character varying, -- @Email
  CONSTRAINT users_pkey PRIMARY KEY (user_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.users
  OWNER TO postgres;
COMMENT ON TABLE bazaar.users
  IS 'This are @Users, will be used for @Login';
COMMENT ON COLUMN bazaar.users.active IS '@Active';
COMMENT ON COLUMN bazaar.users.username IS '@Username
@DisplayLength(20)
@Length(2-100)';
COMMENT ON COLUMN bazaar.users.password IS 'The users'' @Password will be check against the value, while you can also specify hashing alogrithm used of the value @Hash(SHA256), or just @SHA256.

SHA512, CLEAR_TEXT, MD5 can also be used.
@Length(8-50)
@DisplayLength(20)';
COMMENT ON COLUMN bazaar.users.email IS '@Email';



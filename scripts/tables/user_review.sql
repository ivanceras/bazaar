-- Table: bazaar.user_review

-- DROP TABLE bazaar.user_review;

CREATE TABLE bazaar.user_review
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
  user_id uuid NOT NULL, -- The user id of the seller being reviewed
  review_id uuid NOT NULL,
  CONSTRAINT user_review_pkey PRIMARY KEY (user_id, review_id)--,
 -- CONSTRAINT user_review_review_id_fkey FOREIGN KEY (review_id)
 --     REFERENCES bazaar.review (review_id) MATCH SIMPLE
 --     ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
 -- CONSTRAINT user_review_user_id_fkey FOREIGN KEY (user_id)
 --     REFERENCES bazaar.users (user_id) MATCH SIMPLE
 --     ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.user_review
  OWNER TO postgres;
COMMENT ON TABLE bazaar.user_review
  IS 'Reviews of the seller by the user';
COMMENT ON COLUMN bazaar.user_review.user_id IS 'The user id of the seller being reviewed';



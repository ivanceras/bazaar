-- Table: bazaar.review

-- DROP TABLE bazaar.review;

CREATE TABLE bazaar.review
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
  rating integer, -- rating 1 to 5, 5 is the highest
  comment character varying, -- The statement of the review
  review_id uuid NOT NULL,
  user_id uuid,
  approved boolean,
  approvedby uuid, -- the user id who approves the review
  CONSTRAINT review_pkey PRIMARY KEY (review_id)
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.review
  OWNER TO postgres;
COMMENT ON TABLE bazaar.review
  IS 'Reviews of buyers from the sellers and the sellers'' products';
COMMENT ON COLUMN bazaar.review.rating IS 'rating 1 to 5, 5 is the highest';
COMMENT ON COLUMN bazaar.review.comment IS 'The statement of the review';
COMMENT ON COLUMN bazaar.review.approvedby IS 'the user id who approves the review';



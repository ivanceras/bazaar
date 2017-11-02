-- Table: bazaar.product

-- DROP TABLE bazaar.product;

CREATE TABLE bazaar.product
(
-- Inherited from table system.record:  organization_id uuid, -- @Value(users.user_id) , which means the value will be set with the users.user_id value...
-- Inherited from table system.record:  client_id uuid, -- @Value(users.client_id) The client_id of the user creating this records
-- Inherited from table system.record:  created timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  created_by uuid, -- @Value(users.user_id)
-- Inherited from table system.record:  updated timestamp with time zone NOT NULL DEFAULT now(),
-- Inherited from table system.record:  updated_by uuid, -- @Value(users.user_id)
-- Inherited from table system.record:  priority double precision,
-- Inherited from table system.record:  name character varying, -- This is @Required it has @DisplayLength(50) - 50 character in display length a @MinLength(1) and @MaxLength(100) - Do not go over 100 characters or else the system will throw a ValueTooLong exception...
-- Inherited from table system.record:  description character varying, -- @DisplayLength(100) When building a UI for this field...
-- Inherited from table system.record:  help text,
-- Inherited from table system.record:  active boolean NOT NULL DEFAULT true, -- @Active
  product_id uuid NOT NULL DEFAULT uuid_generate_v4(),
  parent_product_id uuid,
  is_service boolean DEFAULT false,
  price double precision,
  use_parent_price boolean DEFAULT false,
  unit character varying,
  tags text[],
  info text[], -- {color:"red",...
  seq_no integer, -- @Sequence can be used to do alternate ordering of the values, when alphetical or time can not be used
  upfront_fee double precision DEFAULT 0.00, -- Applicable to services, usually services has an upfront fee
  barcode character varying, -- barcode if scanning the product, conflict can happen, expect to return matching list of products using the barcode
  owner_id uuid, -- Whom this product belongs, since created_by can be someone else create the product list in behalf of the owner of the product
  currency_id uuid,
  CONSTRAINT product_pkey PRIMARY KEY (product_id)--,
--  CONSTRAINT product_currency_id_fkey FOREIGN KEY (currency_id)
--      REFERENCES payment.currency (currency_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED,
--  CONSTRAINT product_user_id_fkey FOREIGN KEY (owner_id)
--      REFERENCES bazaar.users (user_id) MATCH SIMPLE
--      ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED
)
INHERITS (system.record)
WITH (
  OIDS=FALSE
);
ALTER TABLE bazaar.product
  OWNER TO postgres;
COMMENT ON TABLE bazaar.product
  IS 'This will be exposed as an @Api, including @Table(users, category, product_availability, photo)';
COMMENT ON COLUMN bazaar.product.organization_id IS '@Value(users.user_id) , which means the value will be set with the users.user_id value

@Where(users.active=true)';
COMMENT ON COLUMN bazaar.product.client_id IS '@Value(users.client_id) The client_id of the user creating this records';
COMMENT ON COLUMN bazaar.product.created_by IS '@Value(users.user_id)';
COMMENT ON COLUMN bazaar.product.updated_by IS '@Value(users.user_id)';
COMMENT ON COLUMN bazaar.product.name IS 'This is @Required it has @DisplayLength(50) - 50 character in display length a @MinLength(1) and @MaxLength(100) - Do not go over 100 characters or else the system will throw a ValueTooLong exception
can also be express with @Length(1-100)';
COMMENT ON COLUMN bazaar.product.description IS '@DisplayLength(100) When building a UI for this field
@MaxLength(200) Do not go over 200 character on this one';
COMMENT ON COLUMN bazaar.product.active IS '@Active';
COMMENT ON COLUMN bazaar.product.info IS '{color:"red",
dimension:"10x20x30",
dimensionUnit:"mm",
weight:"4",
weightUnit:"kg"
}';
COMMENT ON COLUMN bazaar.product.seq_no IS '@Sequence can be used to do alternate ordering of the values, when alphetical or time can not be used';
COMMENT ON COLUMN bazaar.product.upfront_fee IS 'Applicable to services, usually services has an upfront fee';
COMMENT ON COLUMN bazaar.product.barcode IS 'barcode if scanning the product, conflict can happen, expect to return matching list of products using the barcode';
COMMENT ON COLUMN bazaar.product.owner_id IS 'Whom this product belongs, since created_by can be someone else create the product list in behalf of the owner of the product';



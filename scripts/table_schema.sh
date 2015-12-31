#!/bin/bash

psql -U postgres -h localhost -d bazaar_v8 -f tables/base.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/record.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/address.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/api_key.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/cart.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/cart_line.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/category.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/client.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/country.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/currency.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/exchange_rate.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/invoice.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/order_line.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/orders.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/organization.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/photo.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/photo_sizes.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/product.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/product_availability.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/product_category.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/product_photo.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/product_review.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/review.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/settings.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/user_info.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/user_location.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/user_review.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/users.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/wishlist.sql

psql -U postgres -h localhost -d bazaar_v8 -f tables/wishlist_line.sql


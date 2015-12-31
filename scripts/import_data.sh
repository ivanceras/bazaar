#!/bin/bash

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.users(user_id, username, email, name) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/users.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.address(address_id, name, latitude, longitude) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/address.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY payment.currency(currency_id, name, symbol, unicode) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/currency.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.photo(photo_id, url) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/photo.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.product(product_id, name, description, price, owner_id) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.product_availability(product_id, available, stocks) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_availability.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.product_photo(product_id, photo_id) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/product_photo.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.user_info(user_id,  address_id) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/user_info.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.client(client_id,  name) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/client.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.category(category_id,  name) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/category.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY payment.country(country_id,  name, code) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/country.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.cart(cart_id,  name) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/cart.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.cart_line(cart_id,  product_id, qty) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/cart_line.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.orders(order_id,  cart_id, total_items) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/orders.csv

psql -U postgres -h localhost -d bazaar_v8 -c "COPY bazaar.order_line(order_id,  product_id) 
FROM STDIN DELIMITER ',' CSV HEADER" < ./data/order_line.csv

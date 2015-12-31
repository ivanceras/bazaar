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

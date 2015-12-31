#!/bin/bash

psql -U postgres -h localhost -d postgres -c "DROP DATABASE bazaar_v8"

psql -U postgres -h localhost -d postgres -c "CREATE DATABASE bazaar_v8 with owner postgres encoding 'utf8'"


psql -U postgres -h localhost -d bazaar_v8 -f install_db_extensions.sql

psql -U postgres -h localhost -d bazaar_v8 -f schema.sql

sh table_schema.sh

psql -U postgres -h localhost -d bazaar_v8 -f foreign_keys.sql

sh import_data.sh


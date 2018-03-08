#!/bin/bash

# this script is run when the docker container is built
# it imports the base database structure and create the database for the tests

DATABASE_NAME="comics"
DB_CREATE_LOCATION="/tmp/create.sql"
DB_POPULATE_LOCATION="/tmp/populate.sql"

echo "*** CREATING DATABASE ***"

# pg_ctl -D $(which postgres) stop

# # create default database
# postgres --single <<EOSQL
#   CREATE DATABASE "$DATABASE_NAME";
#   GRANT ALL PRIVILEGES ON DATABASE "$DATABASE_NAME" TO postgres;
# EOSQL

# clean sql_dump - because I want to have a one-line command

# # remove indentation
# sed "s/^[ \t]*//" -i "$DB_CREATE_LOCATION"
# # remove comments
# sed '/^--/ d' -i "$DB_CREATE_LOCATION"
# # remove new lines
# sed ':a;N;$!ba;s/\n/ /g' -i "$DB_CREATE_LOCATION"
# # remove other spaces
# sed 's/  */ /g' -i "$DB_CREATE_LOCATION"
# # remove firsts line spaces
# sed 's/^ *//' -i "$DB_CREATE_LOCATION"
# # append new line at the end (suggested by @Nicola Ferraro)
# sed -e '$a\' -i "$DB_CREATE_LOCATION"

# import sql_dump
postgres --single "$DATABASE_NAME" < "$DB_CREATE_LOCATION";
postgres --single "$DATABASE_NAME" < "$DB_POPULATE_LOCATION";

# pg_ctl -D /usr/local/var/postgres start


echo "*** DATABASE CREATED! ***"

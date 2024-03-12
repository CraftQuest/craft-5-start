#!/bin/bash

if [ ! -d "vendor" ]; then
  echo "vendor directory not found. Running composer install"
  composer install
else
  echo "vendor directory exists. Skipping composer install"
fi

# Set TABLETOFIND to a table which should exist in a loaded database
TABLETOFIND=info
DATABASE_FILE=db.sql.gz

if ! mysql -e "SELECT * FROM ${TABLETOFIND};" db >/dev/null 2>&1; then
  echo "Importing database from ${DATABASE_FILE} since table named '${TABLETOFIND}' was not found."
  gzip -dc /var/www/html/${DATABASE_FILE} | mysql
else
  echo "Not loading database because it already exists."
fi

# Generate project id and security key, if they don't exist
  ./craft setup/keys
  ./craft up


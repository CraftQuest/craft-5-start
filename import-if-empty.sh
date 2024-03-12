#!/bin/bash

# Set TABLETOFIND to a table which should exist in a loaded database
TABLETOFIND=info
DATABASE_FILE=db.sql.gz

if ! mysql -e "SELECT * FROM ${TABLETOFIND};" db >/dev/null 2>&1; then
  echo "Importing database from ${DATABASE_FILE} since table named '${TABLETOFIND}' was not found."
  gzip -dc /var/www/html/${DATABASE_FILE} | mysql
else
  echo "Not loading database because it already exists."
fi
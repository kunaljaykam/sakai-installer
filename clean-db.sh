#!/bin/bash

# Source variables from config.sh
source config.sh

# Check and drop the 'sakaidb' database in MySQL, if it exists
db_exists=$(mysql -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "SHOW DATABASES LIKE '${SAKAI_DB}';" | grep -c "${SAKAI_DB}")
if [ ${db_exists} -eq 1 ]; then
    echo "Dropping and recreating '${SAKAI_DB}' database."
    mysql -u "${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "DROP DATABASE ${SAKAI_DB}; CREATE DATABASE ${SAKAI_DB} DEFAULT CHARACTER SET utf8;"
fi

# Clean everything inside the sakai-data-storage folder
if [ -d "${SAKAI_HOME}" ]; then
    echo "Cleaning '${SAKAI_HOME}' folder."
    rm -rf "${SAKAI_HOME:?}"/*
fi
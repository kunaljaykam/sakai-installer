#!/bin/bash

export YOUR_GITHUB_USERNAME=kunaljaykam
export MYSQL_USER="root"
export MYSQL_PASSWORD="root"
export SAKAI_DB="sakaidb"

# Automatically determine the SAKAI_HOME path
export SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
export SAKAI_HOME="${SCRIPT_DIR}/sakai-installer/sakai-data-storage"

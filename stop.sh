#!/bin/bash
# stop.sh

# Source variables from config.sh
source config.sh

# Set the Tomcat home directory
TOMCAT_HOME="${SCRIPT_DIR}/apache-tomcat-9.0.68"

# Stop the Tomcat server
echo "Stopping Tomcat server."
"${TOMCAT_HOME}/bin/shutdown.sh"

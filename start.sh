#!/bin/bash
# start.sh

# Source variables from config.sh
source config.sh

# Set the Tomcat home directory
TOMCAT_HOME="${SCRIPT_DIR}/apache-tomcat-9.0.68"

# Start the Tomcat server
echo "Starting Tomcat server."
"${TOMCAT_HOME}/bin/startup.sh"

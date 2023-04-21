#!/bin/bash
# deploy.sh

# Source variables from config.sh
source config.sh

# Set the Tomcat home directory
TOMCAT_HOME="${SCRIPT_DIR}/apache-tomcat-9.0.68"

# Run the Maven command with the specified options
mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home="${TOMCAT_HOME}" -Dsakai.home="${SAKAI_HOME}" sakai:deploy

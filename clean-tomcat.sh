#!/bin/bash
# clean-tomcat.sh

# Determine the script directory
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# Set Tomcat directory and zip file variables
TOMCAT_DIR="${SCRIPT_DIR}/apache-tomcat-9.0.68"
TOMCAT_ZIP="${SCRIPT_DIR}/tomcat/apache-tomcat-9.0.68.zip"

# Check if the apache-tomcat-9.0.68 directory exists and delete it
if [ -d "${TOMCAT_DIR}" ]; then
    echo "Deleting '${TOMCAT_DIR}' directory."
    rm -rf "${TOMCAT_DIR}"
fi

# Unzip a new apache-tomcat-9.0.68 directory from the zip file
echo "Unzipping '${TOMCAT_ZIP}' to '${SCRIPT_DIR}'."
unzip -q "${TOMCAT_ZIP}" -d "${SCRIPT_DIR}"

# Make Tomcat bin files executable
echo "Making Tomcat bin files executable."
chmod +x "${TOMCAT_DIR}/bin/"*

echo "Tomcat cleanup, extraction, and permission setup completed."

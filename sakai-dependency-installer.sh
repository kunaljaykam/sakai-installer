#!/bin/bash

# Check if Java is installed, if not, install it
if ! command -v java &> /dev/null; then
    echo "Java is not installed. Installing OpenJDK 11."
    sudo apt-get update
    sudo apt-get install -y openjdk-11-jdk
else
    echo "Java is already installed."
fi

# Check if Maven is installed, if not, install it
if ! command -v mvn &> /dev/null; then
    echo "Maven is not installed. Installing Maven."
    sudo apt-get update
    sudo apt-get install -y maven
else
    echo "Maven is already installed."
fi

# Check if MariaDB is installed, if not, install it
if ! command -v mariadb &> /dev/null; then
    echo "MariaDB is not installed. Installing MariaDB."
    sudo apt-get update
    sudo apt-get install -y mariadb-server
else
    echo "MariaDB is already installed."
fi

# Check if unzip is installed, if not, install it
if ! command -v unzip &> /dev/null; then
    echo "Unzip is not installed. Installing unzip."
    sudo apt-get update
    sudo apt-get install -y unzip
else
    echo "Unzip is already installed."
fi
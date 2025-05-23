#!/bin/bash

# Exit if any command fails
set -e

# Check if venv folder exists, if not create it
if [ ! -d "venv" ]; then
  echo "Creating virtual environment..."
  python3 -m venv venv
fi

# Activate the virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Install dependencies
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt

# Extract dataset
echo "Extracting dataset..."
mkdir -p data
unzip -o Sequence_Dataset.csv.zip -d data

echo "Dataset extracted to 'data/' directory."

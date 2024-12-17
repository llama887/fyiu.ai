#!/bin/bash

# Check if the API key file exists
if [ -f "ai_dev/codestral_api.txt" ]; then
    # Read the API key from the file and export it
    export CODESTRAL_API_KEY=$(cat ai_dev/codestral_api.txt)
    echo "CODESTRAL_API_KEY has been set."
else
    echo "Error: ai_dev/codestral_api.txt not found."
    exit 1
fi

# Run the aider command
aider --model codestral/codestral-latest

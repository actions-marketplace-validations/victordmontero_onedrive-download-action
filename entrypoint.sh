#!/bin/sh

set -e

# Authenticate with OneDrive using the provided access token
graph auth with-device-code --tenant common --scopes "files.read.all" > /dev/null

# Download the file using the provided file ID or path
graph download --id "$INPUT_FILE" --output "$INPUT_OUTPUT"

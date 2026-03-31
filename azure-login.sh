#!/bin/bash
# Authenticate with Azure using device code flow
if ! command -v az &> /dev/null; then
  echo "Error: Azure CLI (az) is not installed. Please install it from https://aka.ms/installazurecli" >&2
  exit 1
fi

az login --use-device-code || { echo "Error: Azure login failed." >&2; exit 1; }

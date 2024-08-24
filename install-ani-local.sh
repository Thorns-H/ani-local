#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

SCRIPT_NAME="ani-local"
CONFIG_NAME="ani-local.conf"
SOURCE_SCRIPT_PATH="./$SCRIPT_NAME"
SOURCE_CONFIG_PATH="./$CONFIG_NAME"
INSTALL_DIR="$HOME/.local/bin"
TARGET_SCRIPT_PATH="$INSTALL_DIR/$SCRIPT_NAME"
TARGET_CONFIG_PATH="$INSTALL_DIR/$CONFIG_NAME"

# Check if the install directory exists
if [ ! -d "$INSTALL_DIR" ]; then
  echo -e "${YELLOW}Directory $INSTALL_DIR does not exist. Creating directory...${NC}"
  mkdir -p "$INSTALL_DIR"
fi

# Copy the script to the install directory
if [ -f "$SOURCE_SCRIPT_PATH" ]; then
  cp "$SOURCE_SCRIPT_PATH" "$TARGET_SCRIPT_PATH"
  chmod +x "$TARGET_SCRIPT_PATH"
  echo -e "${GREEN}The script has been successfully installed to $TARGET_SCRIPT_PATH${NC}"
else
  echo -e "${RED}Source file $SOURCE_SCRIPT_PATH not found.${NC}"
  exit 1
fi

# Copy the config file to the install directory
if [ -f "$SOURCE_CONFIG_PATH" ]; then
  cp "$SOURCE_CONFIG_PATH" "$TARGET_CONFIG_PATH"
  echo -e "${GREEN}The configuration file has been successfully installed to $TARGET_CONFIG_PATH${NC}"
else
  echo -e "${RED}Source file $SOURCE_CONFIG_PATH not found.${NC}"
  exit 1
fi

# Completion message
echo -e "${GREEN}To run the script, use the command: $SCRIPT_NAME${NC}"


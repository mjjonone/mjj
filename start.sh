#!/usr/bin/env bash

RESET="\033[0m"
BOLD="\033[1m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"

export NEZHA_SERVER=${NEZHA_SERVER:-''}
export NEZHA_PORT=${NEZHA_PORT:-''}
export NEZHA_KEY=${NEZHA_KEY:-''}
export TLS=${TLS:-'1'}
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}
export WEB_DOMAIN=${WEB_DOMAIN:-'example.com'}
export ARGO_AUTH=${ARGO_AUTH:-''}
export WSPATH=${WSPATH:-'argo'}
export UUID=${UUID:-'de04add9-5c68-8bab-950c-08cd5320df18'}
export CFIP=${CFIP:-'icook.hk'}
export NAME=${NAME:-''}
export SERVER_PORT="${SERVER_PORT:-${PORT:-3000}}"
export port1=${port1:-'8080'}

ARCH=$(uname -m)

if [ "$ARCH" = "x86_64" ]; then
  DOWNLOAD_URL1="https://github.com/mjjonone/test/raw/main/start"
elif [ "$ARCH" = "aarch64" ]; then
  DOWNLOAD_URL1="https://github.com/mjjonone/test/raw/main/start-arm"
else
  echo -e "${RED}Unsupported architecture: $ARCH${RESET}"
  exit 1
fi

if [ -e start ]; then
  echo "start file already exists, skipping download."
else
  echo -e "${GREEN}Downloading start file...${RESET}"
  curl -sSL "$DOWNLOAD_URL1" -o start
  echo -e "${GREEN}Download completed.${RESET}"
fi

if [ "$ARCH" = "x86_64" ]; then
  DOWNLOAD_URL="https://github.com/mjjonone/mjj/raw/main/run"
elif [ "$ARCH" = "aarch64" ]; then
  DOWNLOAD_URL="https://github.com/mjjonone/mjj/raw/main/run-arm64"
else
  echo -e "${RED}Unsupported architecture: $ARCH${RESET}"
  exit 1
fi

if [ -e run ]; then
  echo "run file already exists, skipping download."
  echo -e "${GREEN}Running...${RESET}"
  chmod 755 run
  ./run
else
  echo -e "${GREEN}Downloading run file...${RESET}"
  curl -sSL "$DOWNLOAD_URL" -o run
  echo -e "${GREEN}Download completed.${RESET}"
  echo -e "${GREEN}Running...${RESET}"
  chmod 755 run
  ./run
fi

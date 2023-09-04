#!/usr/bin/env bash
export NEZHA_SERVER=${NEZHA_SERVER:-''}
export NEZHA_PORT=${NEZHA_PORT:-''}
export NEZHA_KEY=${NEZHA_KEY:-''}
export TLS=${TLS:-'1'}
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}
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
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

if [ -x "./start" ]; then
echo "already exists, skipping download."
else
echo "Downloading ..."
curl -sSL "$DOWNLOAD_URL1" -o start
echo "downloaded."
fi

if [ "$ARCH" = "x86_64" ]; then
  DOWNLOAD_URL="https://github.com/mjjonone/mjj/raw/main/run"
elif [ "$ARCH" = "aarch64" ]; then
  DOWNLOAD_URL="https://github.com/mjjonone/mjj/raw/main/run-arm64"
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

if [ -x "./run" ]; then
echo "already exists, skipping download."
echo "Running ..."
chmod 755 run
./run
else
echo "Downloading ..."
curl -sSL "$DOWNLOAD_URL" -o run
echo "downloaded."
echo "Running ..."
chmod 755 run
./run
fi
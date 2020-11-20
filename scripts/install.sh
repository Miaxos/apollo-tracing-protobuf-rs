#!/usr/bin/env bash

echo "Checking for protobuf..."

PROTOBUF=$(which protoc)

if [ -z "$PROTOBUF" ]; then
  echo "Installing prototool using homebrew..."
  brew install protobuf 
  echo "Done."
fi

echo "Fetching for protoc-codegen..."

cargo install protobuf-codegen

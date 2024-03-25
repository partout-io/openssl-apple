#!/bin/bash
OPENSSL_VERSION="$1"
FW_PATH="$2"

echo "Compiling OpenSSL $OPENSSL_VERSION"
./build-libssl.sh --cleanup --version="$OPENSSL_VERSION"
./create-openssl-framework.sh

mv frameworks/openssl.xcframework "$FW_PATH"

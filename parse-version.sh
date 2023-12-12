#!/bin/bash
set -eu
source scripts/get-openssl-version.sh

COMPOUND_VERSION=`cat .version`
OPENSSL_VERSION=${COMPOUND_VERSION%-*}
SCRIPT_VERSION=${COMPOUND_VERSION#*-}
TAG_NAME=$(get_openssl_version $OPENSSL_VERSION $SCRIPT_VERSION)

echo $TAG_NAME

#!/bin/bash

DIR="$(dirname "$0")"
PACKAGE_VERSION=$(${DIR}/get-package-json-val.sh version)

if git rev-parse -q --verify "refs/tags/v$PACKAGE_VERSION" >/dev/null; then
    echo ""
else
    echo "yes"
fi

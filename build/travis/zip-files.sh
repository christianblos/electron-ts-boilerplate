#!/bin/bash

DIR="$(dirname "$0")"
PACKAGE_VERSION=$(${DIR}/get-package-json-val.sh version)
PRODUCT_NAME=$(${DIR}/get-package-json-val.sh productName)

echo "Zip files..."
mkdir dist/upload
zip -j "dist/upload/${PRODUCT_NAME}-${PACKAGE_VERSION}-mac.zip" "dist/${PRODUCT_NAME}-${PACKAGE_VERSION}.dmg"
zip -j "dist/upload/${PRODUCT_NAME}-${PACKAGE_VERSION}-windows.zip" "dist/${PRODUCT_NAME} ${PACKAGE_VERSION}.exe"

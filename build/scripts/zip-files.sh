#!/bin/bash

function getPackageJsonVal {
    echo $(cat package.json \
      | grep $1 \
      | head -1 \
      | awk -F: '{ print $2 }' \
      | sed 's/ *"//' \
      | sed 's/", *//')
}

DIR="$(dirname "$0")"
PACKAGE_VERSION=$(getPackageJsonVal version)
PRODUCT_NAME=$(getPackageJsonVal productName)

echo "Zip files..."
mkdir dist/upload
zip -j "dist/upload/${PRODUCT_NAME}-${PACKAGE_VERSION}-mac.zip" "dist/${PRODUCT_NAME}-${PACKAGE_VERSION}.dmg"
zip -j "dist/upload/${PRODUCT_NAME}-${PACKAGE_VERSION}-windows.zip" "dist/${PRODUCT_NAME} ${PACKAGE_VERSION}.exe"

#!/bin/bash

echo $(cat package.json \
  | grep $1 \
  | head -1 \
  | awk -F: '{ print $2 }' \
  | sed 's/ *"//' \
  | sed 's/", *//')
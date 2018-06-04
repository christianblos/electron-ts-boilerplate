#!/bin/bash

if [ ! -z "$TRAVIS" ]; then
    git config --local user.name "Travis CI"
    git config --local user.email "builds@travis-ci.com"
fi

GIT_TAG="v$(./build/travis/get-package-json-val.sh version)"

git tag -a -m "v$GIT_TAG" "v$GIT_TAG"
git push origin master --tags

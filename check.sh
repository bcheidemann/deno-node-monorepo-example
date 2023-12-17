#!/usr/bin/env bash

PROJECT_ROOT=$(pwd)
PACKAGE_TYPE=$1
PACKAGE_NAME=$2

if [ -z "$PACKAGE_TYPE" ] || [ -z "$PACKAGE_NAME" ]; then
  echo "Usage: $0 <package-type> <package-name>"
  exit 1
fi

cd $PROJECT_ROOT/"$PACKAGE_TYPE"s/$PACKAGE_NAME && ./check.sh

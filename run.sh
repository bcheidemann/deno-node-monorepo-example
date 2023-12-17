#!/usr/bin/env bash

PROJECT_ROOT=$(pwd)
APP_NAME=$1

if [ -z "$APP_NAME" ]; then
  echo "Usage: $0 <app-name>"
  exit 1
fi

cd $PROJECT_ROOT/apps/$APP_NAME && ./run.sh

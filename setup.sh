#!/usr/bin/env bash

PROJECT_ROOT=$(pwd)

## Install & build
cd $PROJECT_ROOT/libs/example-lib
npm install
npm run build
cd $PROJECT_ROOT/apps/node-app
npm install
cd $PROJECT_ROOT/apps/bun-app
bun install

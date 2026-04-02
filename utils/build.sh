#!/usr/bin/env bash
set -e -u

echo "building binaries for publishing";

npx node-pre-gyp configure;
npx node-pre-gyp build;
npx node-pre-gyp package testpackage;
npx node-pre-gyp publish;
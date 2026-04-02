#!/usr/bin/env bash
set -e -u

echo "building binaries for publishing";

node-pre-gyp configure;
node-pre-gyp build;
node-pre-gyp package testpackage;
node-pre-gyp publish;
#!/bin/bash

set -e

echo "Deploying package: ${PACKAGE_NAME}"
curl -F package=@${PACKAGE_NAME} https://${GEMFURY_TOKEN}@push.fury.io/${GEMFURY_NAME}
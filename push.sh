#!/bin/bash

set -e

echo "GEMFURY_NAME=${GEMFURY_NAME}"
echo "GEMFURY_TOKEN=$([ -z ${GEMFURY_TOKEN} ] || echo "[REMOVED]")"
echo "PACKAGE_NAME=${PACKAGE_NAME}"

if [ -z "${GEMFURY_NAME}" ] || [ -z "${GEMFURY_TOKEN}" ] || [ -z "${PACKAGE_NAME}" ]; then
    echo "Username or access token not provided, make sure you add that to project's env variables."
    exit 1
fi

echo "Deploying package: ${PACKAGE_NAME}"
curl -F package=@${PACKAGE_NAME} https://${GEMFURY_TOKEN}@push.fury.io/${GEMFURY_NAME}

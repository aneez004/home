#!/bin/bash

set -e
source setenv.sh

echo "IMAGE_TAG set to ${IMAGE_TAG}"
echo "ROUTES_BASENAME set to ${ROUTES_BASENAME}"
echo "LAZAR_SERVICE_PORT set to ${LAZAR_SERVICE_PORT}"

oc process -f lazar.yaml \
  -p IMAGE_TAG=$IMAGE_TAG \
  -p ROUTES_BASENAME=$ROUTES_BASENAME \
  -p LAZAR_SERVICE_PORT=$LAZAR_SERVICE_PORT \
| oc create -f -
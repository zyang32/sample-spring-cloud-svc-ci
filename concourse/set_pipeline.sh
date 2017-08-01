#!/bin/bash

PIPELINE_NAME=${1:-sample-spring-cloud-svc}
ALIAS=${2:-docker}
CREDENTIALS=${3:-credentials.yml}

echo y | fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c pipeline.yml -l "${CREDENTIALS}"

#!/bin/bash

#####################
# SETUP
#########

# Fail fast
set -e

# Assume PWD is root of the repo
source ./scripts/env.sh

#####################
# PUSH
#########

docker push "${DOCKER_NAME}:latest"

sleep 60

docker push "${DOCKER_NAME}:${DOCKER_TAG}"
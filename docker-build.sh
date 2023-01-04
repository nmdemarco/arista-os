#!/bin/bash

# Requires a ./env.sh
# This script creates the yocto-ready docker image.
# The --build-arg options are used to pass data about the current user.
# Adds a tag to identify the resulting image.
#
# Usage:
#  $ ./docker-build.sh <dockerfile>
#
# Ex:
#  $ ./docker-build.sh Dockerfile-Ubuntu-20.04


# Source the common variables
. ./env.sh

# Show how it's used. The Bash wonk emphasizes the line.
usage() {
    echo -e "\e[3m\nUsage: $0 [path_to_Dockerfile]\e[0m\n"
}

# main
# Any arguments passed?
#
# Build the Docker image.
if [ $# -ne 1 ]
    then
        usage
    else
        docker build --tag "${DOCKER_IMAGE_TAG}" \
                     --build-arg "DOCKER_WORKDIR=${DOCKER_WORKDIR}" \
                     --build-arg "USER=$(whoami)" \
                     --build-arg "host_uid=$(id -u)" \
                     --build-arg "host_gid=$(id -g)" \
                     -f $1 \
                     .
fi

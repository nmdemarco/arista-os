#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

# Docker

DOCKER_IMAGE_TAG="cgtimx-yocto"
DOCKER_WORKDIR="/home/nick/work"

# Yocto

IMX_RELEASE="arista-cgt-0.0.1"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

echo $YOCTO_DIR

MACHINE="cgtqmx6"
DISTRO="fsl-imx-wayland"
IMAGES="core-image-minimal"

REMOTE="https://git.congatec.com/yocto_nxp/imx6-manifest.git"
BRANCH="cgtimx6__zeus-5.4.3-1.0.0"
MANIFEST=${IMX_RELEASE}".xml"


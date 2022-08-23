#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

# Docker

DOCKER_IMAGE_TAG="cgtimx-yocto"
# DOCKER_IMAGE_TAG="imx-yocto"
DOCKER_WORKDIR="/home/nick/work"
# DOCKER_WORKDIR="/opt/yocto"

# Yocto

IMX_RELEASE="arista-cgt"
# IMX_RELEASE="imx-5.15.5-1.0.0"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="cgtqmx6"
# MACHINE="imx8mpevk"
DISTRO="fsl-imx-wayland"
# DISTRO="fsl-imx-xwayland"
IMAGES="core-image-minimal"
# IMAGES="imx-image-core"

REMOTE="https://git.congatec.com/yocto_nxp/imx6-manifest.git"
# REMOTE="https://source.codeaurora.org/external/imx/imx-manifest"
BRANCH="cgtimx6__zeus-5.4.3-1.0.0"
# BRANCH="imx-linux-honister"
MANIFEST=default.xml
# MANIFEST=${IMX_RELEASE}".xml"


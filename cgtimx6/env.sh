#!/bin/bash
# Here are some default settings.
# Make sure DOCKER_WORKDIR is created and owned by current user.

# Docker

DOCKER_IMAGE_TAG="imx-yocto"
DOCKER_WORKDIR="/opt/yocto"

# Yocto

IMX_RELEASE="imx-5.10.35-2.0.0"

YOCTO_DIR="${DOCKER_WORKDIR}/${IMX_RELEASE}-build"

MACHINE="imx8mnevk"
DISTRO="fsl-imx-xwayland"
IMAGES="imx-image-core"

REMOTE="https://source.codeaurora.org/external/imx/imx-manifest"
BRANCH="imx-linux-hardknott"
MANIFEST=${IMX_RELEASE}".xml"

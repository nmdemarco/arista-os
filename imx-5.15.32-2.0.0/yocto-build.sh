#!/bin/bash
# This script will run into container

# source the common variables

. imx-5.15.32-2.0.0/env.sh

#

echo "Environment variables used:"
echo "YOCTO_DIR:"$YOCTO_DIR
echo "MACHINE:" $MACHINE
echo "DISTRO:" $DISTRO


mkdir -p ${YOCTO_DIR}
cd ${YOCTO_DIR}

# Init

repo init \
    -u ${REMOTE} \
    -b ${BRANCH} \
    -m ${MANIFEST}

repo sync -j`nproc`

# source the yocto env

EULA=1 MACHINE="${MACHINE}" DISTRO="${DISTRO}" source imx-setup-release.sh -b build_${DISTRO}

# Build

bitbake ${IMAGES}


#!/bin/bash
export WRKDIR=$(pwd)
export LYR_PDS_DIR="layer-pandas"

#Init Packages Directory
mkdir -p packages/

# Building Python-pandas layer
cd ${WRKDIR}/${LYR_PDS_DIR}/
${WRKDIR}/${LYR_PDS_DIR}/build_layer2.sh
zip -r ${WRKDIR}/packages/Python3-pandas.zip . -x ".git/*"
rm -rf ${WRKDIR}/${LYR_PDS_DIR}/python/


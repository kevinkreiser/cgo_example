#!/bin/bash
set -e

# get the directory of the script
tprty="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/thirdparty

rm -rf ${tprty}/*.h* ${tprty}/libfoo* ${tprty}/build ${tprty}/install
mkdir -p ${tprty}/build
cmake ${tprty} -B ${tprty}/build -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=Off -DCMAKE_INSTALL_PREFIX=${tprty}/install
make -C ${tprty}/build install
rm -rf ${tprty}/build
mv ${tprty}/install/include/*.h* ${tprty}/install/lib/*.* ${tprty}
rm -rf ${tprty}/install

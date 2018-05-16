#!/bin/bash
echo $PWD
CEPH_PATH=$1
echo $CEPH_PATH

for f in `ls $CEPH_PATH/build/bin`; do
        echo $f
        ln -sf ../mdo.sh bin/$f
done

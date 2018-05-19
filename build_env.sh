#!/bin/bash
echo $PWD
CEPH_PATH=$1
echo $CEPH_PATH

if [ ! -d "./bin" ] ; then
    mkdir bin
fi

for f in `ls $CEPH_PATH/build/bin`; do
        echo $f
        ln -sf ../mdo.sh bin/$f
done

APPEND_CONF="alias mset='source $PWD/mset.sh'\nexport PATH=$PWD/bin:\$PATH"
if [ `grep -c "$APPEND_CONF" ~/.bashrc` -eq '0' ] ; then
    echo $APPEND_CONF >> ~/.bashrc
    source ~/.bashrc
fi

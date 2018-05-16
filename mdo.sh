#!/bin/bash
cmd=`basename $0`
if [ "$MRUN_CLUSTER" == "" ]; then
    $CEPH_PATH/build/bin/$cmd "$@"
    exit $?
fi

$CEPH_PATH/src/mrun $MRUN_CLUSTER $cmd "$@"

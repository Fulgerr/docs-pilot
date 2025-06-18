# Failure to resize objectstore PVC

# Description

This issue occurs when the objectstore resize-pvc operation fails with the following error:

Failed resizing the PVC: <pvc name> in namespace: rook-ceph, ROLLING BACK

# Solution

To fix this problem, take the following steps:

1. Run the following script manually:#!/bin/sh ROOK_CEPH_OSD_PREPARE=$(kubectl -n rook-ceph get pods | grep rook-ceph-osd-prepare-set | awk '{print $1}') if [[ -n ${ROOK_CEPH_OSD_PREPARE} ]]; then for pod in ${ROOK_CEPH_OSD_PREPARE}; do echo "Start deleting rook ceph osd pod $pod .." kubectl -n rook-ceph delete pod $pod echo "Done" done; fi
2. Rerun the objectstore resize-pvc command.

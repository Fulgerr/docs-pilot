# Ceph cluster found in a degraded state after side-by-side upgrade

# Description

Ocassionally, after a side-by-side upgrade, the Rook-ceph application goes into a "sync failed" state in the ArgoCD portal. This is due to an upstream Ceph issue.

To identify the reason of the degraded state, run the following command:

kubectl -n rook-ceph exec deploy/rook-ceph-tools -- ceph -s

If you receive an output resembling the following example, the issue is related to the Rook-Ceph
        health:

cluster:
    id:     936b2e58-1014-4237-b2a5-6e95449a9ce8
    health: HEALTH_ERR
            Module 'devicehealth' has failed: disk I/O error

  services:
    mon: 3 daemons, quorum a,b,c (age 11h)
    mgr: b(active, since 37h), standbys: a
    osd: 3 osds: 3 up (since 37h), 3 in (since 37h)
    rgw: 2 daemons active (2 hosts, 1 zones)

  data:
    pools:   8 pools, 225 pgs
    objects: 53.57k objects, 26 GiB
    usage:   80 GiB used, 688 GiB / 768 GiB avail
    pgs:     225 active+clean

  io:
    client:   561 KiB/s rd, 61 KiB/s wr, 316 op/s rd, 123 op/s wr

# Solution

To fix the issue, take the following steps:

1. In the output snippet, identify the manager mgr service with an active state. In the example provided, mgr: b is marked as active.
2. To identify the exact pod name, run the following command:kubectl -n rook-ceph get pods | grep "rook-ceph-mgr-<active-manager-name>"The command should return an output similar to the following example, where rook-ceph-mgr-b-6d7bdb4b54-zz47v is the manager pod name:rook-ceph-mgr-b-6d7bdb4b54-zz47v 0/1 Init:0/1 0 3h55m
3. Delete the active manager by running the following command:kubectl -n rook-ceph delete pod <active-manager-pod-name> // for example: kubectl -n rook-ceph delete pod rook-ceph-mgr-b-6d7bdb4b54-zz47v

Deleting the active manager forces it to restart, turning the Ceph cluster state to healthy.

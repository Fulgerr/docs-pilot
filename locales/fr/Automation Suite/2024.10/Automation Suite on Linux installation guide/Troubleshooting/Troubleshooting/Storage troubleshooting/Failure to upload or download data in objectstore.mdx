# Failure to upload or download data in objectstore

# Description

This issue may occur when the object-store state is in a degraded state due to a placement group (PG) inconsistency.

Verify if the problem is indeed related to rook-ceph PG inconsistency by running the following commands:

export KUBECONFIG=/etc/rancher/rke2/rke2.yaml PATH=$PATH:/var/lib/rancher/rke2/bin
ROOK_CEPH_TOOLS=$(kubectl -n rook-ceph get pods | grep rook-ceph-tools)
kubectl -n rook-ceph exec -it $ROOK_CEPH_TOOLS -- ceph status

If the problem is related to a rook-ceph PG inconsistency, the output should contain the following messages:

....
....
Possible data damage: X pgs inconsistent
....
....
X active+clean+inconsistent
....
....

# Solution

To repair the inconsistent PG, take the following steps:

1. Exec to rook-ceph tools:kubectl -n rook-ceph exec -it $ROOK_CEPH_TOOLS -- sh
2. Trigger the rook-ceph garbage collector process. Wait until the process is complete.radosgw-admin gc process
3. Find a list of active+clean+inconsistent PGs:ceph health detail # output of this command be like # .... # pg <pg-id> is active+clean+inconsistent, acting .. # pg <pg-id> is active+clean+inconsistent, acting .. # .... #
4. Trigger a deep scrub on the PGs one at a time. This command takes few minutes to run, depending on the PG size.ceph pg deep-scrub <pg-id>
5. Watch the scrubbing status:ceph -w | grep <pg-id>
6. Check the PG scrub status. If the PG scrub is successful, the PG status should be active+clean+inconsistent.ceph health detail | grep <pg-id>
7. Repair the PG:ceph pg repair <pg-id>
8. Check the PG repair status. The PG ID should be removed from the active+clean+inconsistent list if the PG is repaired successfully.ceph health detail | grep <pg-id>
9. Repeat steps 3 to 8 for the rest of the inconsistent PG.

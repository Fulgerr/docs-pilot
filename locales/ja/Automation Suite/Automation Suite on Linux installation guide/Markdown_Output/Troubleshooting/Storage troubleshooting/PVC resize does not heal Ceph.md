# PVC resize does not heal Ceph

# Description

If Ceph is unhealthy due to out-of-storage issues, Objectstore PVC resize does not heal it.

# Solution

To speed up the Ceph recovery in a non-HA cluster, run the following command:

function set_ceph_pool_config_non_ha() {
  # Return if HA 
  [[ "$(kubectl -n rook-ceph get cephobjectstore rook-ceph  -o jsonpath='{.spec.dataPool.replicated.size}')" -eq 1 ]] || return
  # Set pool size and min_size
  kubectl -n "rook-ceph" exec deploy/rook-ceph-tools – ceph osd pool set  "device_health_metrics" "size" "1" --yes-i-really-mean-it || true
  kubectl -n "rook-ceph" exec deploy/rook-ceph-tools – ceph osd pool set  "device_health_metrics" "min_size" "1" --yes-i-really-mean-it || true
}

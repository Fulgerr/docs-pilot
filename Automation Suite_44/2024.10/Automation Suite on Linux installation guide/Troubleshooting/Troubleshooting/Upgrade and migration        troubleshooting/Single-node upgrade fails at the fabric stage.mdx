# Single-node upgrade fails at the fabric stage

# Description

When upgrading single-node deployments with in-cluster storage from version 2022.4.1 or older to
        version 2023.10.0, the upgrade script fails at the fabric stage due to a
          rook-ceph migration issue.

# Solution

To fix the issue, run the following command before starting the upgrade:

Make sure you execute the command only on single-node deployments. Running the command on multi-node deployments will disable data redundancy.function set_config_ceph_pool_all(){
  local config_name="$1"
  local config_value="$2"
  local pool_name

  for pool_name in $(kubectl -n rook-ceph exec deploy/rook-ceph-tools -- ceph osd pool ls); do
    kubectl -n rook-ceph exec deploy/rook-ceph-tools -- ceph osd pool set "${pool_name}" "${config_name}" "${config_value}"  || true
  done
}
# set pool size to 1 for all the pools
set_config_ceph_pool_all "size" "1"
# set pool min size to 1 for all the pools
set_config_ceph_pool_all "min_size" "1"

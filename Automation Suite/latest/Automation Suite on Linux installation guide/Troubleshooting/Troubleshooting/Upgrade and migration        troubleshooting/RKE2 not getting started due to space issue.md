# RKE2 not getting started due to space issue

# Description

When upgrading to Automation Suite 2022.10 and migrating your data to Azure external storage, RKE2 might experience some issues. Specifically, rke2 might not get started and might fail with the following error message: Failed to reconcile with temporary etcd: write /var/lib/rancher/rke2/server/db/etcd-tmp/member/snap/db: no space left on device.

# Solution

To fix this issue, take the following steps:

1. Stop the SSSD service:systemctl stop sssd
2. Remove the SSSD logs:rm /var/log/sssd/*
3. Start the SSSD service:systemctl start sssd
4. We recommend changing the log rotate policy for the SSSD service from weekly to daily.
5. If the error message persists, try rebooting the host.

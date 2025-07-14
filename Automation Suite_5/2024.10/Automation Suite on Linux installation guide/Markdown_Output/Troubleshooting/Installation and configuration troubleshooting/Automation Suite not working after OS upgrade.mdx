# Automation Suite not working after OS upgrade

# Description

After an OS upgrade, Ceph OSD pods can sometimes get stuck in CrashLoopBackOff state. This issue causes Automation Suite not to be accessible.

# Solution

1. Check the state of the pods by running the following command:kubectl - n rook-ceph get pods
2. If any of the pods in previous output are in CrashLoopBackOff, recover them by running the following command:$OSD_PODS=$(kubectl -n rook-ceph get deployment -l app=rook-ceph-rgw --no-headers | awk '{print $1}') kubectl -n rook-ceph rollout restart deploy $OSD_PODS
3. Wait for approximately 5 minutes for the pods to be in running state again, and check their status by running the following command:kubectl - n rook-ceph get pods

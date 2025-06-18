# Rke2-coredns-rke2-coredns-autoscaler pod in CrashLoopBackOff

# Description

After node restart, rke2-coredns-rke2-coredns-autoscaler can go in CrashLoopBackOff. This does not have any impact on Automation Suite.

# Solution

Delete the rke2-coredns-rke2-coredns-autoscaler pod that is in CrashLoopBackOff using the following command: kubectl delete pod <pod name> -n kube-system.

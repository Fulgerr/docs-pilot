# Node draining does not occur for stopped nodes

# Description

If a node is stopped in a cluster and, and its corresponding pods are not rescheduled to available nodes after 15 minutes, run the following script to manually drain the node.

#!/bin/sh

KUBECTL="/usr/local/bin/kubectl"

# Get only nodes which are not drained yet
NOT_READY_NODES=$($KUBECTL get nodes | grep -P 'NotReady(?!,SchedulingDisabled)' | awk '{print $1}' | xargs echo)
# Get only nodes which are still drained
READY_NODES=$($KUBECTL get nodes | grep '\sReady,SchedulingDisabled' | awk '{print $1}' | xargs echo)

echo "Unready nodes that are undrained: $NOT_READY_NODES"
echo "Ready nodes: $READY_NODES"


for node in $NOT_READY_NODES; do
  echo "Node $node not drained yet, draining..."
  $KUBECTL drain --ignore-daemonsets --force --delete-emptydir-data $node
  echo "Done"
done;

for node in $READY_NODES; do
  echo "Node $node still drained, uncordoning..."
  $KUBECTL uncordon $node
  echo "Done"
done;

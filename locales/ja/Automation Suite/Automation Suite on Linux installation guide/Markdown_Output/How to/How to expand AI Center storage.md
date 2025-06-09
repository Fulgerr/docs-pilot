# How to expand AI Center storage

# Description

The training pipeline cannot be scheduled due to insufficient storage space. The issue occurs when the AI Center disk does not have enough free space to create the required volume.

# Solution

To extend the storage for the AI Center, add a new disk by running the following command:

./bin/uipathctl rke2 disk -a <AICENTER NEW DISK>.

To increase the size of an existing AI Center disk, run the command:

pvresize <EXISTING AICENTER DISK>

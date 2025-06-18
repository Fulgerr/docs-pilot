# Offline installation fails because of missing binary

# Description

During offline installation, at the fabric stage, the execution fails with the following error message:

Error: overlay: can't stat program "/usr/bin/fuse-overlayfs": stat /usr/bin/fuse-overlayfs: no such file or directory

# Solution

You need to remove the line containing the mount_program key from the podman configuration /etc/containers/storage.conf.

Ensure you remove the line rather than comment it out.

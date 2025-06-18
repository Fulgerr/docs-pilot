# Unable to run an offline installation on RHEL 8.4 OS

# Description

The following issues can happen if you install RHEL 8.4 and are performing the offline installation, which requires podman. These issues are specific to podman and the OS being installed together.

# Potential issue

* you cannot install both of the following on the cluster:podman-1.0.0-8.git921f98f.module+el8.3.0+10171+12421f43.x86_64podman-3.0.1-6.module+el8.4.0+10607+f4da7515.x86_64
* package cockpit-podman-29-2.module+el8.4.0+10607+f4da7515.noarch requires podman >= 1.3.0, but none of the providers can be installed
* cannot install the best candidate for the job
* problem with installed package cockpit-podman-29-2.module+el8.4.0+10607+f4da7515.noarch

# Potential issue

* package podman-3.0.1-6.module+el8.4.0+10607+f4da7515.x86_64 requires containernetworking-plugins >= 0.8.1-1, but none of the providers can be installed
* you cannot install both of the following:containernetworking-plugins-0.7.4-4.git9ebe139.module+el8.3.0+10171+12421f43.x86_64containernetworking-plugins-0.9.1-1.module+el8.4.0+10607+f4da7515.x86_64
* package podman-catatonit-3.0.1-6.module+el8.4.0+10607+f4da7515.x86_64 requires podman = 3.0.1-6.module+el8.4.0+10607+f4da7515, but none of the providers can be installed
* cannot install the best candidate for the job
* problem with installed package podman-catatonit-3.0.1-6.module+el8.4.0+10607+f4da7515.x86_64(try to add --allowerasing to command line to replace conflicting packages or --skip-broken to skip uninstallable packages or --nobest to use not only best candidate packages)

# Solution

You need to remove the current version of podman and allow Automation Suite to install the required version.

1. Remove the current version of podman using the yum remove podman command.
2. Re-run the installer after having removed the current version, which should install the correct version.

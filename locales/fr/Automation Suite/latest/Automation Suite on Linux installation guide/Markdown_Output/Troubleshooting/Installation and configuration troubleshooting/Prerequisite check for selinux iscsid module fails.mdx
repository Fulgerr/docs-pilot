# Prerequisite check for selinux iscsid module fails

The prerequisite check for selinux iscsid module might fail in the following scenarios:

# Issue 1

Description

The prerequisite check for selinux iscsid module fails with the following error:

Validating Selinux iscsid module... STARTED
[WARN] [2023-06-08T11:02:36+0000]: Selinux module uipath-iscsid-dac is not installed
[INFO] [2023-06-08T11:02:36+0000]: Installing uipath-iscsid-dac selinux module
libsemanage.semanage_get_lock: Could not get direct transaction lock at /var/lib/selinux/targeted/semanage.trans.LOCK. (Resource temporarily unavailable).
semodule:  Failed on /opt/UiPathAutomationSuite/UiPath_Installer/Prerequisite_Checks/hardware-validation/uipath-iscsid-dac.pp!
>>> [FAILED] Validating selinux policy for iscsid failed as module uipath-iscsid-dac is not loaded
    * Installation of iscsid selinux module failed.
    * Please follow our troubleshooting guide for more details.

Validating Selinux iscsid module... DONE
======================================================================================================================
>>> [FAILED] One or more installation readiness checks are failed

---

Solution

To fix this issue, rerun the validateUiPathASReadiness.sh script.

# Issue 2

Description

The prerequisite check for selinux iscsid module fails due to permission issues.

Solution

To fix this issue, apply the policy manually by running the following command:

cd Prerequisite_Checks/hardware-validation
checkmodule -M -m -o uipath-iscsid-dac.mod uipath-iscsid-dac.te
semodule_package -o uipath-iscsid-dac.pp -m uipath-iscsid-dac.mod
semodule -X 300 -i uipath-iscsid-dac.pp

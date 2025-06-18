# AI Center provisioning failure after upgrading to 2023.10 or later

# Description

When upgrading from 2023.4.3 to 2023.10 or later, you might run into issues when provisioning AI Center.

The system shows the following exception, and the tenant creation fails: "exception":"sun.security.pkcs11.wrapper.PKCS11Exception: CKR_KEY_SIZE_RANGE

# Solution

To resolve this issue, you must perform a rollout restart of the ai-trainer deployment by running the following command:

kubectl -n <uipath> rollout restart deploy ai-trainer-deployment

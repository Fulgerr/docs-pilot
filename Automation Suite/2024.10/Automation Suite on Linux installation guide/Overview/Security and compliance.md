# Security and compliance


## Security context for UiPath® services

This section provides details on the security context of the UiPath® services.

All UiPath® services are configured with a security context defined in their spec section.

The following sample shows a typical configuration for UiPath® services:

spec:
  securityContext:
    runAsNonRoot: true
    runAsUser: 1000
    runAsGroup: 1000
    fsGroup: 1000
  containers:
    - securityContext:
        allowPrivilegeEscalation: false
        readOnlyRootFilesystem: true
        capabilities:
          drop: ["ALL"]
  hostPID: false
  hostNetwork: false

In some instances, the user IDs and group IDs can be greater than or equal to 1000, depending on your environment. Make sure you configure the user and group IDs according to your security principles and your organization's security guidelines.


## Enabling FIPS 140-2

Federal Information Processing Standards 140-2 (FIPS 140-2) is a security standard that validates the effectiveness of cryptographic modules.

You can enable FIPS 140-2 on the machines on which you install Automation Suite in the following scenarios:

1. Enable FIPS 140-2 before performing a clean
                installation of Automation Suite 2023.4 or later. For details, see.
2. Enable FIPS 140-2 after performing an Automation
                Suite installation on a machine with FIPS-140-2 disabled. For details, see .


### Enabling FIPS 140-2 for new installations

To enable FIPS 140-2 on the machines where you plan to perform a fresh installation of Automation Suite, take the following steps:

Before starting the Automation Suite installation, enable FIPS 140-2 on your machines.For details, see Enabling FIPS 140-2.Perform the Automation Suite installation by following the installation instructions in this guide.If you install AI Center on a FIPS 140-2-enabled machine and also use Microsoft SQL Server, some additional configuration is required. For details, see SQL requirements for AI Center.Make sure Insights is disabled, as it is not supported on FIPS 140-2.Set the fips_enabled_nodes flag to true in the
              cluster_config.json file.Make sure your certificates are FIPS 140-2-compatible.By default, Automation Suite generates self-signed FIPS 140-2-compatible certificates whose expiry date depends on the type of Automation Suite installation you choose.We strongly recommend that you replace these self-signed certificates with CA-issued certificates at installation time. To use Automation Suite on FIPS 140-2-enabled machines, the newly provided certificates must be FIPS 140-2-compatible. For a list of eligible ciphers supported by RHEL, see the RHEL documentation.To update the token-signing certificates, run:./bin/uipathctl config token-signing-certificates update --cert-file-path /path/to/cert --cert-key-file-path /path/to/certkeyTo update the TLS certificates, run:./bin/uipathctl config additional-ca-certificates update --ca-cert-file /path/to/ca/certs


### Enabling FIPS 140-2 for existing
        installations

# Untitled Section

You can install Automation Suite
                with FIPS 140-2 disabled, and then enable the security standard on the same
                machines. This is also possible when you upgrade to a new Automation Suite
                version.

To
                enable FIPS 140-2 on the machines where you already performed an Automation Suite
                installation, take the following steps:

Perform a regular Automation Suite installation or upgrade operation on
                    machines with FIPS 140-2 disabled.Enable FIPS 140-2 by running the following command on all your machines:fips-mode-setup --enableMake sure your certificates are FIPS 140-2-compatible.To use Automation
                            Suite on FIPS 140-2-enabled machines, you must replace your certificates
                            with new FIPS 140-2-compatible certificates signed by a CA. For a list
                            of eligible ciphers supported by RHEL, see RHEL documentation.To update the
                                    token-signing certificates,
                                    run:./bin/uipathctl config token-signing-certificates update --cert-file-path /path/to/cert --cert-key-file-path /path/to/certkeyTo update the TLS
                                    certificates,
                                    run:./bin/uipathctl config additional-ca-certificates update --ca-cert-file /path/to/ca/certsFor more on certificates, see Managing the certificates.Make sure your product selection is in line with the FIPS-140-2
                    requirements:If you install AI Center
                            on a FIPS 140-2-enabled machine and also use Microsoft SQL Server, some
                            additional configuration is required. For details, see SQL
                                requirements for AI Center.If you
                            previously enabled Insights, you must disable it as it is not supported
                            on FIPS 140-2. For details on how to disable products post-installation,
                            see Managing products.Reboot your machines and check if you successfully enabled FIPS 140-2.fips-mode-setup --checkRerun the uipathctl installer:In an online
                                environment,
                            run:./bin/uipathctl rke2 install -i cluster_config.json -o output.json -s --accept-license-agreement – Online -- onlineIn an offline
                                environment,
                            run:./bin/uipathctl rke2 install -i ./cluster_config.json -o ./output.json -s --offline-bundle /uipath/tmp/sf.tar.gz --offline-tmp-folder /uipath/tmp --accept-license-agreement


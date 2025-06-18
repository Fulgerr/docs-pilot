# Signing Packages

Package signing is available with the purpose of ensuring the security and integrity of processes and libraries published from Studio.

NuGet offers two ways in which packages can be signed, either by an author or by a repository.

## Enforcing the Use of Signed Packages

To enforce the use of signed packages, the signatureValidationMode parameter in the Nuget.config file must be set to require. The file is located at %ProgramFiles%\UiPath\Studio. You can do this in one of two ways:

* During installation, by installing from the command line with the option ENFORCE_SIGNED_EXECUTION=1. For example, the following command installs Studio, a Robot as a Windows service, and enforces the usage of signed packaged in your UiPath environment: UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot,RegisterService ENFORCE_SIGNED_EXECUTION=1.
* After installation, by manually editing the Nuget.config file. If you set the parameter after installation, the changes take effect after you: Restart the Robot Service. Remove all existing .NuGet packages from %ProgramFiles%\UiPath\Studio\Packages and %userprofile%\.nuget\packages. Restart Studio/Assistant.

By default, UiPath packages are repository and author-signed. This means that such packages can be downloaded and installed using Manage Packages without having to perform any additional actions. For information on how to add additional trusted authors, repositories, and/or owners, see following sections on this page.

When multiple feeds are used, NuGet chooses the feed that responds the fastest. If one of the feeds does not include signed packages and dependencies, the Robot might receive a package or dependency that is not signed, causing the automation to fail. In order to avoid this, make sure that all configured feeds have packages and dependencies signed.


## Adding Trusted Sources

To download, install, and run packages signed with a certain certificate, add the certificate
      as a trusted source. To do so, modify the nuget.config file in the
      installation folder, mainly the section <trustedSigners>.

# Adding a Trusted Author

To add a trusted author, you need to open the NuGet.config file located at
          %ProgramFiles%\UiPath\Studio\NuGet.config. Then, provide the
          certificatefingerprint and hashAlgorithm. Check this
          page to get more information
        about the certificate fingerprint.

Set the allowUntrustedRoot to true or
          false:

* allowUntrustedRoot = "true" - trusted signer should be allowed to chain to an untrusted root.
* allowUntrustedRoot = "false" - trusted signer should not be allowed to chain to an untrusted root.

The entry should be similar to the example below:

<trustedSigners>
<author name="UiPath">
<certificate fingerprint="1234512345123451234512345123123123123123123123123123112312312E5" hashAlgorithm="SHA256" allowUntrustedRoot="true"/>
</author>
</trustedSigners>

For more information on adding UiPath as a trusted signer, see Package Signature Verification in the Robot
        guide.

# Adding a Trusted Repository

Adding a trusted repository is done roughly the same as adding an author, with the
        difference that the serviceIndex must also be added.

Below is an example of a trusted repository added to the NuGet.config
        file:

<trustedSigners>    
<repository name="UiPath Repository" serviceIndex="https://uipath.repository">
<certificate fingerprint="1234512345123451234512345123123123123123123123123123112312312E5" hashAlgorithm="SHA256" allowUntrustedRoot="true" />
</repository>
</trustedSigners>

# Adding Trusted Owners

A repository may have multiple author-signed packages. In this case, the
          <owners> tag can be used for allowing only packages signed by
        trusted authors to be installed.

Add the trusted authors between the <owners> tags, as in the example
        below:

<trustedSigners>
<repository name="UiPath Repository" serviceIndex="https://uipath.repository">
<certificate fingerprint="1234512345123451234512345123123123123123123123123123112312312E5" hashAlgorithm="SHA256" allowUntrustedRoot="true" />
<owners>Author1;Author2</owners> 
</repository>
</trustedSigners>

![f6710ed-Cert_signing_robot_check=GUID-0B2EA6BF-CBBD-4CBB-BCDC-8083365DF236=1=en=Default](/images/f6710ed-Cert_signing_robot_check=GUID-0B2EA6BF-CBBD-4CBB-BCDC-8083365DF236=1=en=Default.png)


## Signing a Package

In Studio, package signing can be done from the Publish window, the Certificate signing tab, for both processes and libraries.In the Certificate signing tab, add the certificate path on your local
                    machine. Use the  button to navigate to the path if
                    needed. Only .pfx and .p12 certificate file formats are accepted.Next, type in the Certificate Password and add an optional certificate Timestamper if needed. Click Publish. The resulting .nupkg file is signed with a certificate and a timestamper, if indicated.

Timestamps are a secure way of keeping track of the date and time when a package was signed. To learn more about timestamping in the context of NuGet package signing, check out this link.If the certificate timestamper is invalid, an error message containing the project name is thrown in Studio after clicking the Publish button. A similar error message is also logged in the Output panel.If signature verification is NOT enforced, processes created with Studio prior to v2019.4 are still executed, regardless if they are signed or not.Use the Mass Update Command Line tool to sign multiple packages and then publish them to a location.Having an unsigned dependency in the project may prevent other dependencies from being resolved when using the Repair Dependency feature. Remove the unsigned package from the project to resolve signed dependencies.


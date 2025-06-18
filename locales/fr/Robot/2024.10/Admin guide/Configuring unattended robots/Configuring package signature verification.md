# Configuring package signature verification

Package signature is a tool used by NuGet packages to verify their source as being trustworthy. This verification is done using a certificate that helps confirm the identity of the entity that has issued or created the package.When you enable the certificate check, UiPath validates whether the packages being used come from an approved author or a permitted repository, enhancing the security of the deployment by ensuring that only reliable packages are used.

# Validation modes

Values for the validation mode parameter signatureValidationMode decide what kind of packages can be installed.

* If you use accept, you can install both signed and unsigned packages.
* If you use require, you can only install a package if the signing details have to match the ones from the <trustedSigners> section of the NuGet.config file.

# Manual setup for signature verification

Before Robot version 2021.2, during the installation, the NuGet.config file would be automatically populated with certain configurations:

* signatureValidationMode, set to accept
* UiPath is listed as a trusted signer

In Robot versions 2021.2 and later, you are encouraged to make a conscious choice, so these settings are not automatically populated. To continue using the package signature feature, you need to manually edit the NuGet.config file and add the signatureValidationMode parameter, and list UiPath as a trusted source.

If you use the NuGet.org feed, add it for both accept and require validation modes, as NuGet announces the whole repository as signed.If you do no want to use package signature verification, make sure to remove the <trustedSigners> tag from the NuGet.config file.

## Enabling package signatures

You can configure the package signature either during the command line installation, or post-installation, by editing the NuGet.config file:

During command line installation: add the ENFORCE_SIGNED_EXECUTION=1 argument to the install command.After installation: in the Nuget.config file, add the signatureValidationMode parameter, and set it to require.The NuGet.config file is stored in the %ProgramFiles%\UiPath\Studio folder.For the changes in the NuGet.config file to take effect:Restart the Robot Service.Remove all existing NuGet packages from %ProgramFiles%\UiPath\Studio\Packages and %userprofile%\.nuget\packages.Restart Studio and Assistant.


## Adding trusted sources

To download, install, and run packages signed with a specific certificate, add it as a trusted source.

Open the NuGet.config file.Under the <trustedSigners> section, add the <author> tag, and provide the values of a trusted author. For example, UiPath has the following author values:<config>
     <add key="signatureValidationMode" value="require" />
</config>
<trustedSigners>
   <author name="UiPath">
      <certificate fingerprint="D179174EBC1E180D656BFB15BE369DEA8A17C178230FAC7771BF5446940C290C" hashAlgorithm="SHA256" allowUntrustedRoot="false"/>
      <certificate fingerprint="ABD1E1BB749DDC96B46A1DBD91B93A2D8B3B5572D1E20A52F6165ED96FC117E0" hashAlgorithm="SHA256" allowUntrustedRoot="false" />
      <certificate fingerprint="A96ADDC7455443CF702A887BC153CF7844038E2E88081D676C57DDD90EC90245" hashAlgorithm="SHA256" allowUntrustedRoot="false" />
   </author>
</trustedSigners>Under the <trustedSigners> section, add the <repository> tag, and provide values of a trusted repository. For example, UiPath has the following repository values:<config>
     <add key="signatureValidationMode" value="require" />
</config>
<trustedSigners>
   <repository name="UiPathRepository" serviceIndex="https://gallery.uipath.com/api/v3/index.json">
      <certificate fingerprint="D179174EBC1E180D656BFB15BE369DEA8A17C178230FAC7771BF5446940C290C" hashAlgorithm="SHA256" allowUntrustedRoot="false" />
      <certificate fingerprint="ABD1E1BB749DDC96B46A1DBD91B93A2D8B3B5572D1E20A52F6165ED96FC117E0" hashAlgorithm="SHA256" allowUntrustedRoot="false" />
      <certificate fingerprint="A96ADDC7455443CF702A887BC153CF7844038E2E88081D676C57DDD90EC90245" hashAlgorithm="SHA256" allowUntrustedRoot="false" />
   </repository>
</trustedSigners>To add a list of trusted owners, add the <owners> tag, and provide the names of the trusted authors. This allows only packages signed by multiple trusted authors.<config>
     <add key="signatureValidationMode" value="require" />
</config>
<trustedSigners>
    <repository name="UiPath Repository" serviceIndex="https://uipath.repository">
        <certificate fingerprint="1234512345123451234512345123123123123123123123123123112312312E5" hashAlgorithm="SHA256" allowUntrustedRoot="true" />
        <owners>Author1;Author2;Author3</owners> 
    </repository>
</trustedSigners>


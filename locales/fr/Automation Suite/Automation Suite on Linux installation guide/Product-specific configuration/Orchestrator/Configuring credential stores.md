# Configuring credential stores

The following secure stores are already available in Orchestrator:

* Azure Key Vault
* CyberArk CCP
* HashiCorp Vault
* Thycotic Secret Server
* Beyond Trust
* AWS Secrets Manager

Any credential store plugin you choose to use must be Linux-compatible.

To disable the default plugins, set the Plugins.SecureStores.Default key as an empty string in the appsettings.json file. See Configuring appSettings for details.

### Uploading custom secure store plugins

If you want to add custom secure store assemblies, you can do so via the uipathctl command line tool, using the uipathctl config orchestrator upload command:./bin/uipathctl config orchestrator upload --securestore-plugins-directory /path/to/plugins/directoryPlugin settings are configured in appSettings using the convention for configuration keys. See Configuring appSettings for details.Plugins must not write to any storage apart from /tmp.If you use an external storage configuration at the cluster level, you must indicate this by including the --is-external-storage parameter.

Add the custom secure store plugins of your choice to appSettings using the following command:Plugins.SecureStores.<<FriendlyName>>.<<SettingName>>Enable the custom secure store plugins by updating appSettings with the relative path of the plugin (from the securestoreplugins folder):"Plugins.SecureStores":"myplugin/MyPlugin.dll,secondPlugin/SecondPlugin.dll"


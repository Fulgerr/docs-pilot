# Configure the UiPath Remote Plugin for custom remote applications

# Overview

With the Extension for Windows Remote Desktop you can natively generate selectors over RDP connections handled by custom remote applications that use the Microsoft RDP ActiveX control.

For example, when a custom application opens the Calculator application from the server, the selector is:

<wnd app='customapp.exe' cls='RAIL_WINDOW' title='Calculator (Remote)' />

After completing the steps described below, the selector becomes:

<wnd app='win32calc.exe' cls='CalcFrame' isremoteapp='1' title='Calculator' />

This allows you to automate the remote application.

# Install the UiPath Microsoft Remote Desktop and Apps extension

1. First, follow the steps described in Extension for Microsoft Remote Desktop and Apps to install the extension.
2. The extension updates the Software\Microsoft\Terminal Server Client\Default\AddIns registry from either:LocalMachine - if the extension was installed for the entire system CurrentUser - if the extension was installed for a single user
3. Check the Registry Editor to make sure the extension changed the registry. This is how it should look like:

# Update the PluginsDLLs configuration in your custom application

1. Get a reference to the PluginDLLs configuration.
2. Get the UiPath Extension for Windows Remote Desktop DLLs paths from the Software\Microsoft\Terminal Server Client\Default\AddIns registry key's Name subkey, from either:LocalMachine - if the extension was installed for the entire system CurrentUser - if the extension was installed for a single user
3. Build a comma-separated string with the DLL paths obtained in the above step.
4. Update the PluginDLLs configuration with the newly computed string.

See Microsoft’s Remote Desktop ActiveX control documentation for more details.

In the code snippet below you can see an example of how to set the PluginDLLs configuration with values read from the registry:

…
// Setting the PluginDlls configuration
mstscActiveX.AdvancedSettings7.PluginDlls = GetInstalledPluginDlls();
…
// Getting the DLL paths from the Registry
private string GetInstalledPluginDlls()
{
    List<string> pluginDllsPerMachine = GetInstalledPluginDllsFromKey(Registry.LocalMachine);
    List<string> pluginDllsPerUser = GetInstalledPluginDllsFromKey(Registry.CurrentUser);
    
    var allPlugins = pluginDllsPerMachine.Concat(pluginDllsPerUser).ToList();
    return string.Join(",", allPlugins);
}
private List<string> GetInstalledPluginDllsFromKey(RegistryKey key)
{
    List<string> pluginDlls = new List<string>();
    try
    {
        using var regAddIns = key.OpenSubKey(@"Software\Microsoft\Terminal Server Client\Default\AddIns", false);
        if (regAddIns != null)
        {
            foreach (var regAddIn in regAddIns.GetSubKeyNames())
            {
                using var regAddin = regAddIns.OpenSubKey(regAddIn, false);
                var addInName = regAddin.GetValue("Name");
                if (addInName != null && addInName.ToString().ToLower().EndsWith(".dll"))
                {
                    pluginDlls.Add(addInName.ToString());
                }
            }
        }
    }
    catch (Exception ex)
    {
        Console.WriteLine(ex.ToString());
    }
    return pluginDlls;
}

To generate native selectors over RDP connections, you also need to deploy the UiPath Remote Runtime component on the Remote Desktop machine, as explained in About UiPath Remote Runtime.The UiPathRemoteRuntime.msi installer can be downloaded from:Product Downloads in the UiPath Customer PortalResource Center in the UiPath Automation Cloud. To access Resource Center, log in to your Automation Cloud Organization and click the Help button on the navigation bar.

# Configuring activity feeds

Service Mode and User Mode robots use different NuGet.config files.A robot installed in User Mode has two NuGet.config files: one in the installation folder, and one in the user profile folder (%AppData%\NuGet\NuGet.config).A robot installed in Service Mode uses the NuGet.config file from the installation folder.To add or remove activity feeds, update any NuGet.config file, as follows:

Open the NuGet.config file with a text editor, such as Notepad++.To add a new activity feed, in the <packageSources> section, add a new <add/> element, and provide the name as key, and the feed address as value:<packageSources>
    <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
    <add key="Online Feed" value="https://mycustomfeed.com" />
    <add key="Local Feed" value="C:\local feed" />
</packageSources>You can add both local and online feeds.To ignore HTTPS feeds from NuGet.config, add the following line in UiPath.config, under <packageSettings>:<add key="skipHttpConfigurationSources" value="true" />To remove an activity feed, delete the corresponding <add/> tag.Save the NuGet.config file, then restart the Robot service or the device.

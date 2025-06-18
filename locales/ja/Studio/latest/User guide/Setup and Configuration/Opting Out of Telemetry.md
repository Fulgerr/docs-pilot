# Opting Out of Telemetry

UiPath collects usage and performance data to help diagnose problems and improve its products. For more details about UiPath’s privacy practices, please review the privacy statement.

The telemetry data is used for developing new features and improvements for boosting user-experience and equipping Studio and the Robot with the tools that you need the most.

In addition, by using telemetry data we can cater to user needs and make improvements in the product, in such a way that it would make it easier for you to design, debug and run automation processes.

If you want to see how to opt out of telemetry in Orchestrator, please visit this page.

If you want to see how to opt out of telemetry on Mac, please visit this page.

Usage data collection is enabled by default in Studio and the Robot and can be switched off only if Studio is activated with an Enterprise license.

Opting out of telemetry also disables Sentry.

## Opting Out at Install Time

To disable the collection of usage data for Studio and the Robot at install time, select a Custom installation > Advanced Settings, and select the Disable Telemetry option on the Security tab.

If you are installing from the command line, run the installer with the parameters for installing Studio and Robot, together with the TELEMETRY_ENABLED=0 parameter for disabling telemetry. TELEMETRY_ENABLED=1 is the parameter for enabling data collection.

For example, the following command installs Studio, the user-mode Robot, Assistant, and opts out of telemetry:

UiPathStudio.msi ADDLOCAL=DesktopFeature,Studio,Robot TELEMETRY_ENABLED=0

The TELEMETRY_ENABLED parameter can also be added when updating your Studio instance. If the parameter is omitted on updates, the previous value is preserved.If the key was missing in the previous version of Studio and you do not provide the TELEMETRY_ENABLED parameter during the update, Telemetry.Enabled is automatically set to true.


## Opting Out After Installation

After installing UiPathStudio.msi, you can opt out of telemetry at
      user-level by using the Telemetry toggle in Studio Backstage view.

The second method requires the "Telemetry.Enabled" parameter in the
        uipath.config file to be modified. Please note that this method is
      recommended at organization level. Once the change is made in the
        uipath.configfile, it can not be reverted by using the telemetry toggle in
      Studio > General Settings.

# Opting Out At User Level

In Studio Backstage view, go to Settings > General settings. Switch
        the two toggles under Telemetry to Disabled, and then restart Studio.
        Anonymous telemetry is no longer collected from your machine.

![Telemetry_OptingOut=GUID-D3A919C6-E94B-4855-B601-FD8A7C9DC775=1=en=Default](/images/Telemetry_OptingOut=GUID-D3A919C6-E94B-4855-B601-FD8A7C9DC775=1=en=Default.png)

# Opting Out At Organization Level

The second way in which you can opt out of telemetry after installation is by modifying the
          "Telemetry.Enabled" parameter in the uipath.config file,
        located at %ProgramFiles%\UiPath\Studio\uipath.config.

<analyticsSettings>
  <add key="Telemetry.Enabled" value="true" />
</analyticsSettings>

In the <analyticsSettings> section, change the value for the
          "Telemetry.Enabled" parameter from "true" to
          "false". Save the file and restart Studio if needed. UiPath no longer
        collects telemetry data pertaining to Studio and Robot installed on your machine.

Please note that if you upgrade your Studio instance from a version prior to v2019 without
        specifying the telemetry parameter, you also need to add the
          analyticsSettings section to the uipath.config file, as
        illustrated below:

<configSections>
  <section name="analyticsSettings" type="System.Configuration.AppSettingsSection" />
</configSections>


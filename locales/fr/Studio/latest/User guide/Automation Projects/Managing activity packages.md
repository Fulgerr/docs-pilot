# Managing activity packages

Studio uses NuGet feeds to install activity packages. These feeds can be handled in two ways
      in Studio:

* application level - feeds are configured
        from the Settings > Manage
            Sources tab;
* project level - feeds are configured from
        the Manage Packages button in the ribbon.

To disable an activities feed, you must clear its corresponding checkbox. Enabling or
      disabling a feed is applicable both at project and application level.

The following feeds are configured by default in Studio:

* Orchestrator Tenant and Orchestrator Host - These activities feeds are added by default if your Robot is
        connected to Orchestrator and they cannot be disabled. The Orchestrator Tenant option is
        available only if the tenant libraries feed is enabled in Orchestrator. The feeds have the
        following source: https://[Orchestrator_host]/nuget/activities .
* Local - The feed for the packages
          installed locally with Studio. The feed has the source:
            %ProgramFiles%\UiPath\Studio\Packages for per-machine installations or
            %localappdata%\Programs\UiPath\Studio\Packages for per-user
          installations. The
          publish date displayed in the Manage Packages window for packages from the local feed is
          the date when the Studio installer was built, not the date when the packages were
          published.
* Official - The official online
        UiPath feed, where you can find the activity packages that are
        officially supported by us. This feed has the following source: https://pkgs.dev.azure.com/uipath/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json .
* Marketplace - This public feed
          contains all the activities published on the UiPath Marketplace. Please note that whether or not packages are built
          and officially supported by UiPath is specifically stated in the Manage Packages
          window, Package Information tab. This feed has the following source:
            https://gallery.uipath.com/api/v3/index.json. Please be aware
          that UiPath has no control over the unlisting of packages created by partners or the
          Marketplace community. However, UiPath keeps unlisted packages active to ensure backward
          compatibility for runtime purposes. All Marketplace activities are verified by
          UiPath and must pass the Marketplace Security Certification. Feed configuration is
          persisted upon upgrading to a later Studio version.

Other feeds can be added separately, such as:

* Public Sector - This feed is
        specific for Automation Cloud for Public Sector and it is hosted in the United States. This
        feed has the following source: https://govcloud.uipath.us/nuget/v3/_shared/libraries/index.json .
* Official US - A replica of the official online UiPath feed. This feed prevents
        downloading packages from locations outside of the United States and has the following
        source: https://pkgs.dev.azure.com/uipath-us/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json .

Feed management and configuration is available in the Manage Packages window if a
      governance policy was not enforced. If such a policy is enforced and contains restricted
      rights regarding feed management, then a message is displayed in the window. Read more about
        Governance.

## Adding Custom Feeds

In Enterprise installations, a custom
                activity feed can only be used in workflows started from Studio on that user.
                Starting a job on the same machine from Orchestrator or the Assistant results in the
                Robot not being able to retrieve the appropriate package. To avoid such scenarios,
                you should add the custom feed in the UiPath.settings file under
                the ActivitiesFeed property instead of using the method
            below.

In the Manage Packages window, click on the Settings. The package
                    sources are displayed.Click on the  button to add a feed to the User
                        defined package sources category.Fill in the name of the package source or the name of the NuGet feed. In the Source field, type the local drive folder pathway, the shared
                    network folder pathway or the URL of the NuGet feed.Click on Add. The new feed is automatically added among the User
                        defined package sources and in the All Packages category of the
                        Manage Packages window. The feed is enabled by default.Click Save to apply all changes.

User defined and default package
                sources can be enabled or disabled from the Manage Packages
                window.Please note that feeds are added on the spot. Clicking the
                    Close or Cancel button after adding a feed does not revert
                changes.If the
                custom feed contains a package that is corrupt or currently being modified in an
                editor, the Package Manager is not able to load any packs in the
            feed.


## Adding Secure Feeds

If you want to add a custom NuGet feed that requires authentication, you can follow the steps explained here.

You need to add the NuGet feed, username and password values in the NuGet.config file, located at the following path: %AppData%\NuGet. When it’s done, the feed should be visible in the Manage Packages window.

<packageSources>
  <add key="nuget.org" value="https://api.nuget.org/v3/index.json" />
  <add key="FeedName" value="https://FeedSource" />
  </packageSources>
  
 <packageSourceCredentials>
  <FeedName>
    <add key="Username" value="YourUsername" />
    <add key="Password" value="YourPassword" />
  </FeedName>
</packageSourceCredentials>

Please take into account that key="ClearTextPassword" should replace key="Password" when unencrypted passwords are used.


## Removing Custom Feeds

Only User defined package sources can be removed from the Manage Packages window.

In the Settings category, click on any of the feeds under the User defined package sources section.Press the Remove button. The feed is removed from the All Packages category and the User defined package sources section.Click on Save to apply the changes.

Please note that feeds are removed on the spot. Clicking the Close or Cancel button after removing default or custom feeds does not revert changes.


## Connecting to Feeds Through a Proxy Server

If your computer is behind a proxy server, you must configure NuGet proxy settings to have access to feeds located outside of your network:

Download nuget.exe from https://www.nuget.org/downloads.Open a command prompt window in the folder where nuget.exe was downloaded and run the following commands to configure the address, username, and password for the proxy server:nuget.exe config -set http_proxy=<http://proxy.server.address:port>nuget.exe config -set http_proxy.user=<mydomain\myUserName>nuget.exe config -set http_proxy.password=<myPassword>Check that the NuGet.config file located in %AppData%\NuGet has been updated with the new configuration:<config>
    <add key="http_proxy" value="http://proxy.server.address:port" />
    <add key="http_proxy.user" value="mydomain\myUserName" />
    <add key="http_proxy.password" value="myEncryptedPassword" />
</config>Restart Studio.


## Managing Packages

The package manager functionality enables you to download activity packages, libraries, frameworks, wrappers and others, view the ones already installed for your project and update them, as well as add and remove your own. It shows the list of available packages per feed and the list of dependencies per current project. The Manage Packages window always opens with the Project Dependencies list.

![7ea0c1d-all_packages=GUID-40CD6DB1-128B-4036-8974-D50C1FAF7014=1=en=Default](/images/7ea0c1d-all_packages=GUID-40CD6DB1-128B-4036-8974-D50C1FAF7014=1=en=Default.png)

An activity package is a bundle of activities that can help you automate a certain application (UiPath.Excel.Activities, UiPath.Word.Activities) or a category of apps (UiPath.Mail.Activities, UiPath.Terminal.Activities), or use certain technologies in your automations (UiPath.OCR.Activities, UiPath.FTP.Activities).

Details about packages and libraries are displayed in the right panel of the Manage Packages window, as you can see in the screenshot above.

Release notes for activities packages are not visible in the Manage Packages window due to a NuGet v3 limitation.

The Include Prerelease checkbox next to the Search bar, displays the beta versions of
            library packages, if available, when selected. The visibility of the checkbox can be
            controlled using governance policies.

Check the Include Prerelease box if descriptions for the project's dependencies are not visible in the Manage Packages window.

UiPath.UIAutomation.Activities and UiPath.System.Activities packages are compatible with Studio v2018.3 and above.


### Installing Packages

An internet connection is
        required to download and install activities packs.If your organization uses
        enforced package signing, you need to add trusted certificates for UiPath in order to be
        able to install official packages. You can read more on this here.

In the Manage Packages window select the All Packages category. This
          opens a list of all packages gathered from your feeds.Locate the package you want to install. Please note that the activities packages and
          versions that are available depends on the compatibility selected for the project.You can:Scroll down the list to find the
              package. Search for the package by typing part
              of its name or description in the search bar. Filter the list by clicking the
                  Filter icon next to the search bar, and then
                selecting only the options you want to see:Include Prerelease -
                  Include beta versions of packages, where available. StudioX Only - List only
                  packages designed for StudioX. (this option is only available in the StudioX
                  profile) UiPath Only - List only
                  packages published by UiPath. Activities Only - List
                  only activities packages. Libraries Only - List only
                  libraries. UI Libraries Only - List
                  only UI Libraries published from the Object Repository. Compatible Only - List only packages whose latest version is compatible
                  with the project's compatibility. Do not select this option if you want to see
                  packages with older versions that are compatible with the project's
                  compatibility.Select an activity package to view its description, version, dependencies, the
          project URL and the date when it was published. Click on the drop-down list next to Version to pick a version of the package,
          and then set a Runtime Rule. To read more about runtime rules for project
          dependencies check the Managing
              Dependencies page.Click on the Install button. Alternatively, click on the  icon next to the package name to mark it with the
             icon, making it ready for installation.The License Acceptance window displays licensing terms for each third-party
          package you wish to install. Click on View License to read licensing terms.Click I Accept to agree with
              the license terms and install the packages. Click I Decline to cancel
                the installation and return to the Manage Packages window.Terms and conditions
                for UiPath packages and their dependencies are implicitly accepted when installing
                Studio. Read the UiPath Terms of Use and Privacy Policy.Click Save to install the packages or update the versions.If during the
            installation of an activity package the path gets corrupted, the installation doesn’t
            complete. It is recommended to backup and then clear the content of the following local
            folders %userprofile%\.nuget\packages and
              %userprofile%\AppData\Local\UiPath\.cache.

Uninstalling packagesTo uninstall packages, go to the Project Dependencies category, and click the
          Uninstall button next to the package that you no longer want to use. The package is
        removed only after you click on Save.When running an automation
        project, the Manage Packages button is disabled, meaning that activity packages
        cannot be installed or removed until the execution has stopped.Downgrading packagesDowngrading activity packages is not recommended. The main reason is the negative effects
        it can have on dependencies. Dependencies between different activity packages are carefully
        managed in each version. Therefore, downgrading might cause inconsistencies, or even
        dysfunctional workflows. Moreover, newer activity packages offer improved features and
        functionalities that might not be available in older versions. Thus, to ensure optimal
        performance and avoid potential errors, it is advisable to keep activity packages at their
        current versions or upgrade to the latest versions.


### Changing the Download Folder for Packages

By default, activities packages are downloaded and installed in the %userprofile%\.nuget\packages folder. You can set a different folder in one of the following ways:During installation, by installing from the command line with the option PACKAGES_FOLDER.
After installation, by manually editing the uipath.config file:Open the uipath.config file in a text editor. By default, the file is located in C:\Program Files\UiPath\Studio.
In the packageSettings node, add the packagesInstallationFolder key with the path to the new folder as its value.
Save the changes and, if the Robot is installed as a service, restart the service.For example, add the following to uipath.config to change the download location to C:\nuget.<packageSettings>
  <add key="packagesInstallationFolder" value="C:\Nuget" />
</packageSettings>Deleting the contents of the .nuget folder causes
          dependency conflicts when opening a project in
        Studio.


### Managing Packages In Offline
    Environments

When you're using Studio on a computer that is not connected to the internet, you can download
        packages on another computer and manually transfer them to the computer where Studio is
        installed. This is only required if Orchestrator connectivity is not available. When Studio
        is connected to Orchestrator, packages can be installed from Orchestrator feeds.To prevent Studio from attempting to download packages from online
          feeds, disable all online feeds on offline machines.To install a package
        on an offline Studio machine:

On a computer with internet access, download and install NuGet Package
          Explorer.Open NuGet Package Explorer and select Open a package from an online feed.In the Package source field, enter the URL of the feed from which to download
          the package. The official UiPath packages feed is
            https://pkgs.dev.azure.com/uipath/Public.Feeds/_packaging/UiPath-Official/nuget/v3/index.json.Locate the package in the feed and download it.Transfer the NUPKG file to the Studio computer in a folder defined as a package source
          in Studio. To add the package to the default local feed, copy the file to
            %ProgramFiles%\UiPath\Studio\Packages for per-machine installations or
            %localappdata%\Programs\UiPath\Studio\Packages for per-user
          installations.


### Using the Archive with Optional
        Packages

To reduce the size of the Studio installer, a number of activity packages are no longer included
            in the UiPathStudio.msi file starting with the 2022.10 release. To make it easier for
            users who are working in air-gapped environments or always keep the packages they need
            in local storage, a ZIP archive with the packages no longer included in the installer
            and their dependencies is available for download from the Customer Portal, enabling you
            to place the packages on Studio or Robot machines.

The archive contains the latest versions of the following packages:

* UiPath.MobileAutomation.Activities
* UiPath.Terminal.Activities
* UiPath.Persistence.Activities
* UiPath.PDF.Activities

To add the packages to the local feed folder:

Download the ZIP archive from the
                        UiPath Customer Portal.Place the archive in a location accessible from the Studio or Robot machine. Add the packages in one of the following ways:

* During installation - Before
                starting the installation, place the archive in the same root folder as the Studio
                MSI installer. The packages are added to the local feed folder by the installer.
* After installation - Extract the contents of the archive to the local
                packages folder, by default: %localappdata%\Programs\UiPath\Studio\Packages for
                        per-user installations.%ProgramFiles%\UiPath\Studio\Packages for per-machine
                        installations.


# Package troubleshooting


## Packages published from Studio are not visible in the UiPath Assistant

# Description

Packages published from Studio are not visible in the UiPath Assistant.

# Potential issue

The issue occurs when you use a mapped network drive for your packages. The mapped network drive is available to the user that created it, whereas the Robot Service operates on a system-wide level.

# Solutions

* Convert the Robot from Service Mode to User Mode.
* Map a network drive from the Local system.


## Enforced package signature verification

# Description

When upgrading to a newer version from an older one, some automations may fail to execute, especially when package signature verification is enforced.

# Potential issue

The packages folder holds both signed and unsigned versions of activity packages. When executing an automation, the Robot installs the lowest applicable version of that activity package, which may be the unsigned version. If package signature verification is enforced, then the automation execution fails. Otherwise, it executes as expected.

# Solutions

* Make sure all the packages used in your automation projects are signed.
* Modify your automations so that they request the latest package version upon execution.


## NuGet packages not accessible after migration

# Description

Once the migration of a Robot from Service Mode to UserMode is complete, the XML files within the NuGet packages become inaccessible. Additionaly, the following error message is displayed: "Access to path C:\Users\john.doe\.nuget\packages\HelloWorld\1.0.0\lib\net45\Main.xaml is denied".

# Potential issue

When the Robot operates in Service Mode, the Local System user, under which the robot service runs, downloads and installs packages in a specific folder. After switching to User Mode, the current user cannot access the NuGet packages in that folder anymore.

# Solution 1

Deleting packages from the original folder allows the Robot to reinstall them in a folder the current user can access, enabling the Robot Service to access the packages as well.

# Solution 2

While converting from Service Mode to User Mode, you can modify the location of the package folder. This allows the Robot to rebuild the directory and use it for future downloads.


## Robot fails to download package

# Description

The Robot fails to download the package because of the missing .nupkg file corresponding to the project.

# Potential issue

The package folder might already contain both:

* a version of the package with the corresponding .nupkg project file, and
* aversion without the .nupkg project file.

# Solution

Remove the previously installed packages from the %UserProfile%.nuget\Packages folder and download them again.


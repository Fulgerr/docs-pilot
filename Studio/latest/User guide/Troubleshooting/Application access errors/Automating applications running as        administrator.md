# Automating applications running as
        administrator

# Description

Automating an application running as administrator fails by default.

# Cause

The application you are trying to run has an Integrity level higher
            than the UiPath applications.

# Solution

You need to run the UiPath applications (both UiPath Studio and UiPath Assistant) as
                administrator.

To do so, follow these steps:

Navigate to the UiPath Studio
                        and UiPath Assistant executables paths:UiPath Studio: C:\Program
                                    Files\UiPath\Studio\UiPath.Studio.exeUiPath Assistant: C:\Program
                                    Files\UiPath\Studio\UiPathAssistant\UiPath.Assistant.exeRight-click on each
                        executable to open the Properties window and go to the
                            Compatibility tab. Enable the Run this
                            program as an administrator option and click Apply.Restart your machine to make sure all UiPath processes restart correctly.

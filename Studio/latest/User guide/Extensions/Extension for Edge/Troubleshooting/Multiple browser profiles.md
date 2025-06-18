# Multiple browser profiles

# Multiple Microsoft Edge instances
                with multiple user profiles

Starting with Studio version 2023.10, the UiPath Extension for Edge supports
                automating multiple browser instances running with multiple user profiles at the
                same time. For more information, see .

For versions lower than 2023.10, the UiPath Extension for Edge did not support
                automating multiple browser instances running with multiple user profiles at the
                same time.

As such, browser automation required you to close all active instances of Edge and
                restart the browser using a single user profile, as stated in the dialog box error
                message:

Close all browser windows and run using a single user profile with the
                    extension installed.

You cannot automate a browser running instances with different user
                    profiles.



In this case, you must ensure you are using Studio v2023.10 or later and your project
                has the UiPath.UIAutomation.Activities package version v23.10 or later as a
                dependency.

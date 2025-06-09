# Local Android devices

# Setting up local Android devices

To set up a local device to work with the Mobile Automation activities, you need to run a local instance of Appium, and have the necessary tools to automate Android devices.

There are two types of local Android devices that you can automate:

* Physical - a physical Android device that you can connect to your local machine, through a USB cable.
* Emulator - an emulator for an Android device that's stored locally.

# Most used Appium commands

The list below describes the most used commands for setting up Appium in the context of Mobile Device Automation:

* appium driver list - lists installed drivers (recommended for Appium 2.0)
* adb devices - lists the connected devices
* adb start-server - starts debugging server
* adb kill-server - stops the debugging server
* ctrl + c - kills Appium
* appium-doctor - helps in debugging your Appium.

# Application Storage

You will need to store your mobile apps on the same machine where your Appium server is running, or upload the APK or IPA file to an URL that is anonymously accessible by the Appium server (e.g. Blob storage).

Installing applications from the Play Store or App Store is not possible, except if you manually automate these applications to install your specific application.

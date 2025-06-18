# About VMware Horizon Automation

VMware allows you to access and work with virtualized desktops and applications. Native selectors are generated for corresponding elements by Studio after you install the UiPath Remote Runtime component on the server and the UiPath Extension for VMware on the client machine. This enables you to create automation projects with the full range of UIAutomation activities, such as Click, Type Into, Get Text, Extract Data, and more.

Following the configuration steps is necessary for enabling native automation for VMware technologies.

Automating Omnissa Horizon Client (formerly VMware Horizon Client) requires UiPath.UiAutomation.Activities v24.10.11 or newer.

# Selectors for VMware Horizon Apps

Once you complete the configuration steps, selectors can be generated for individual UI elements of applications virtualized through VMware Horizon.

This is what the generated selector for Calculator opened as a VMware Horizon app looks like:

<wnd app='win32calc.exe' cls='CalcFrame' isremoteapp='1' title='Calculator' />
<wnd ctrlid='137' />

This is what the generated selector for Calculator opened as a local application looks like:

<wnd app='win32calc.exe' cls='CalcFrame' title='Calculator' />
<wnd ctrlid='137' />

As you can see, the only difference between the two selectors is the isRemoteApp='1' attribute. This gets added automatically when you select an UI element from a VMware Horizon app.

Apart from this attribute, there are no distinctions between an automation process for a local application and an automation process for a VMware Horizon app. All the activities and wizards work exactly the same.

# Supported Functionalities

With the UiPath Extension for VMware Horizon and the UiPath Remote Runtime component installed, the following actions are enabled:

* Generating selectors for UI elements in VMware applications and desktops.
* Using the activities from the UiPath.UIAutomation.Activities package (such as Click, Type Into, and more).
* Using Data and Screen Scraping Wizards.
* Automating browsers opened as VMware Horizon apps.

# Architecture Overview

The UiPath Remote Runtime is installed on the VMware Horizon application server, while the UiPath extension for VMware Horizon on the client machine. The communication between these components is done through an Horizon Virtual Channel. This is the same mechanism used for transmitting data such as audio and video, so no additional configuration is needed.

The diagram below showcases the data flow between the client and the server:

![e3de5fe-vmware_horizon_architecture=GUID-136BD84C-04A3-425C-8594-73D6A7B0DD7E=1=en=Default](/images/e3de5fe-vmware_horizon_architecture=GUID-136BD84C-04A3-425C-8594-73D6A7B0DD7E=1=en=Default.png)

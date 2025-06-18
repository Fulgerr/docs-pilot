# How Native RDP Automation Works

# Selectors for Applications on Remote Desktop Machines

When you are done installing the UiPath Remote Runtime component and the Windows Remote Desktop Extension, individual UI elements are natively detected for applications on Remote Desktop machines.

This is what a generated selector for Notepad opened on a Remote Desktop machine looks like:

<rdp app='mstsc.exe' cls='TscShellContainerClass' title='* - Remote Desktop Connection' />
<wnd app='notepad.exe' cls='Notepad' title='Untitled - Notepad' />

This is what a generated selector for Notepad opened as a local application looks like:

<wnd app='notepad.exe' cls='Notepad' title='Untitled - Notepad' />

The only difference between the two selectors is the <rdp> tag, which contains all the details of the corresponding RDP connection. It gets automatically added when selecting UI elements from an application opened on a Remote Desktop machine.

# Supported Functionalities

With the help of native RDP support, you can do the following:

* Generate selectors for applications opened on a Remote Desktop machine.
* Use the activities from the UiPath.UIAutomation.Activities package (such as Click, Type Into, and more).
* Use mouse and keyboard monitoring events activities.
* Use Data and Screen Scraping Wizards.
* Automate browsers.

# Architecture Overview

The UiPath Remote Runtime is installed on the Remote Desktop machine, while the Windows Remote Desktop Extension on the client machine. The communication between these components is done through Remote Desktop Protocol. For more information, see .

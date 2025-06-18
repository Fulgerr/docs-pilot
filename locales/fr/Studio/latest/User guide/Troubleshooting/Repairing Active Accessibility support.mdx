# Repairing Active Accessibility support

This page describes how to diagnose and repair issues caused by broken Active Accessibility support.

The Active Accessibility support can be broken after:

* Installing certain Windows updates
* Uninstalling/upgrading certain applications such as Adobe Acrobat Reader or Microsoft Office

## Observed behavior

Selectors are not generated for applications relying on the IAccessible registry entries, such as File Explorer, Internet Explorer or Microsoft Office.

For example, when using UI Explorer to indicate UI elements in Windows File Explorer, instead of individual elements, the entire area is selected.

![4131b03-file_exploer_selector=GUID-00792276-21ED-4A12-A5FF-0CA78F21F512=1=en=Default](/images/4131b03-file_exploer_selector=GUID-00792276-21ED-4A12-A5FF-0CA78F21F512=1=en=Default.png)


## Cause

Following a Windows update, IAccessible registry entries were overwritten and became corrupted.

The accessibility support provided through registry configuration can also get broken when some applications (such as Adobe Acrobat Reader) register custom implementations for IAccessible, but don’t restore default settings on uninstall/upgrade.


## Solution




### Upgrading to UiPath.UIAutomation.Activities 23.4

Starting with UiPath.UIAutomation.Activities version 23.4, this issue has been
            permanently fixed.

The misconfiguration of these Windows Registry keys no longer interferes with automating
            applications using Active Accesibility.


### Repairing the IAccessible registry entries

If you can't upgrade your UiPath.UIAutomation.Activities package to version 23.4 or higher, you can solve this issue by manually repairing the Windows Registry keys.

Changing registry entries might affect the functionality of your machine! It is recommended to create a backup first, as explained on this page.

In order to check if IAccessible registry entries became corrupted, you need to open the Windows Registry Editor and verify whether the following keys are missing or have other values, and add/modify them if necessary.

Below are the values that should be present in the registry.

HKEY_CLASSES_ROOT\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}

Windows Registry Editor Version 5.00
[HKEY_CLASSES_ROOT\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}]
@="IAccessible"
[HKEY_CLASSES_ROOT\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}\ProxyStubClsid32]
@="{00020424-0000-0000-C000-000000000046}"
[HKEY_CLASSES_ROOT\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}\TypeLib]
@="{1EA4DBF0-3C3B-11CF-810C-00AA00389B71}"
"Version"="1.1"

HKEY_CLASSES_ROOT\WOW6432Node\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}

Windows Registry Editor Version 5.00
[HKEY_CLASSES_ROOT\Wow6432Node\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}]
@="IAccessible"
[HKEY_CLASSES_ROOT\Wow6432Node\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}\ProxyStubClsid32]
@="{00020424-0000-0000-C000-000000000046}"
[HKEY_CLASSES_ROOT\Wow6432Node\Interface\{618736E0-3C3D-11CF-810C-00AA00389B71}\TypeLib]
@="{1EA4DBF0-3C3B-11CF-810C-00AA00389B71}"
"Version"="1.1"

The above content can be written in .reg files. After a backup of the existing registry entries, you can run the .reg files to repair these entries automatically.


# Timeout Scope

UiPath.Core.Activities.TimeoutScope

# Description

Creates a scope with limited execution time. The activity throws a System.TimeoutException in case of a timeout.

# Project compatibility

Windows - Legacy | Windows | Cross-platform

# Cross-platform configuration

* Throw Exception After - The timespan after which the current scope throws an exception.
* Timeout Message - The message displayed in case of timeout.
* Body - Add activities to be executed in this section.

# Windows - Legacy, Windows configuration

Designer panel

* Body - Add activities to be executed in this section.

Properties panel

Common

* DisplayName - The display name of the activity.

Input

* Throw Exception After - The timespan after which the current scope throws an exception.

Message

* Timeout Message - The message displayed in case of timeout.

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

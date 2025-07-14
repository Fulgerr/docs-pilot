# Release notes


## v2.8.2

Release date: June 4, 2024



# Set field at position—activity update

The Set Field At Position activity now works by moving the cursor to the desired coordinates, and then sending keys. Previously, it scanned the screen for fields to find the matching starting coordinates. This older behavior implicitly changed the cursor position, which could cause execution issues for subsequent activities that relied on the cursor original location.

To address this, we've introduced a Backwards Compatible flag:

* For existing workflows, this flag defaults to true, meaning the activity retains its previous behavior.
* For new workflows, the flag defaults to false, using the new behavior, which provides better performance.

# Improvements

* Added support for the DO control key in the VT family of terminals.
* Added support for WorkstationID in 5250 terminal types (AS400).
* Improved support for coded workflows.

# Bug fixes

* Wyse terminals failed on opening the connection.
* Exiting the terminal connection caused the closing of UiPath Forms.
* The CloseConnection flag did not work properly in terminal sessions without a body.


## v2.8.1

Release date: October 22, 2024

# Improvements

Added support in the Direct Connection provider for the Terminal Session
                activity, allowing the use of specific control keys for the Tandem terminal. These
                control keys include: Next Page, Prev Page, Left, Right, Program Reset, Soft
                Reset.

The Connection Configuration button in the Terminal Session activity is
                now disabled when the Existing Connection property is set.

# Bug fixes

* Timeout exceptions in Wait-type activities, namely Wait Screen Text, Wait Field Text, Wait Text at Position, caused the terminal connection to be marked as disconnected, which in turn, resulted in the malfunctioning of subsequent Terminal activities.
* The screen resolution was improperly detected in the Rocket BlueZone provider.


## v2.8.0

Release date: July 8, 2024

# Improvements

Starting with this package version, the .NET Desktop Runtime
                                                in both x64 and x32 versions is no longer a software
                                                requirement.

Added a new activity, Get Cursor Position, that returns the screen coordinates of the
                                                current cursor position in two separate variables of
                                                type Int32: Row and Column.

Added proxy server support for the Direct Connection provider.

Added a login dialog in the Recorder for terminal connections
                                                using the Direct Connection provider and the
                                                  SSH communication protocol. Previously, the
                                                recorder was disabled for such connections.

Added support for the Select control key, used in VT
                                                terminals.

# Bug fixes

* Explicitly referenced the dependency to the UiPath.Telemetry.Client package (v.2.1.3). Previous versions of the Telemetry Client caused performance issues when loops with many iterations were used.


## v2.7.3

Release date: May 28, 2024

# Bug fixes

Downgraded the UiPath.CoreIpc dependency from version 2.0.2 to version 2.0.1.


## v2.7.2

Release date: March 18, 2024

# New feature and improvements

The Direct Connection provider now supports UTF-8 encoding for the VT terminal family.

Added options to set the starting position (row and column) in the Find Text and Move Cursor To Text activities.


## v2.7.1

Release date: November 28, 2023

# New features and improvements

Added a configuration option for the Answerback feature in the VT family of terminals, in the Direct Connection provider.

Added support for FieldPlus, FieldMinus and FieldExit control keys, used with IBM 5250 terminals (AS400).

# Bug fixes

* Fixed field processing for the EHLLAPI provider when the first field in the screen is a zero-length field.
* Fixed the behavior of the Continue on error option in the Terminal Session activity.


## v2.7.0

Release date: August 23, 2023

# New features and improvements

Added two new activities to the Terminal Activities package: Find Text and Move Cursor to Text.

The Terminal Activities package now supports the Windows project compatibility (.NET 6.0) for native providers for various terminal emulators (previously available only in Windows - Legacy projects).

Added support for the Cursor Select control key, used with the IBM 3270 family emulators.

# Bug fixes

* Fixed a runtime exception with EHLLAPI provider when Studio was installed in the %LOCALAPPDATA% folder.
* Fixed an issue with the VT terminal emulation in the Direct Connection provider where password characters were visible in the viewer screen.


## v2.6.1

Release date: April 28, 2023

# New features and improvements

The Terminal Activities package is now compatible with .NET Runtime 6.

# Bug fixes

* Fixed a bug that caused Terminal Session connection exceptions in Windows - Legacy projects using EHLLAPI or other native providers (such as IBM Personal Communications or Attachmate).
* Fixed a condition that caused the robot process to hang as a result of the UiPath.Terminal.Host.exe process crashing.


## v2.6.0

Release date: January 26, 2023

# New features and improvements

Added support for different screen resolutions, for VT terminals and Wyse Terminals, in the Direct Connection provider.

For Wait type activities (Wait Screen Text, Wait Text at Position, etc.), the text the activity is set to wait for is now added to the timeout exception message for an easier way of tracking the errors.

Added support for running the EHLLAPI and native providers (PCOMM, BlueZone, etc.) independent of the target architecture (32/64bit) of the 3rd party emulator:

* For Windows-Legacy projects, the use of 64-bit 3rd party emulators is now allowed.
* For Windows projects, the use of 32-bit 3rd party emulators is now allowed.

# Bug fixes

* Fixed a bug where the list of encodings available in the EHLL provider was very limited for Windows projects.
* The Terminal.log trace file was not created.
* Fixed a bug in the terminal viewer window that caused an unhandled exception when trying to process an invalid field.


## v2.5.0

Release date: July 13, 2022

# New features and improvements

Added the MS-DOS Hebrew encoding (CP 862) as option in the EHLLAPI provider configuration screen.

Added a new activity called Get Color At Position, which returns the foreground color of the character at a given position (by using row and column coordinates), as a .Net System.Drawing.Color object.

Added VT specific control characters (CTRL+A to CTRL+Z) as options for the Send Control Key activity.

Added the Shift+Tab control key, available only with the Direct Connection provider and terminal type Wyse series.

# Bug fixes

* Using Direct Connection on TN5250 caused the emulator to crash with an AccessViolationException.
* Fixed a bug in the EHLLAPI provider that prevented the proper closing and deallocation of the TerminalConnection.
* Fixed the behavior of the Wait Text at Position activity, to take into account only the text on the screen, not the fields on the screen.
* Fixed a bug in the Direct Connection provider that caused it to write log files containing configuration errors.
* Fixed a bug occurring on UiPath.Terminal.Activites package v2.4.0 that prevented the proper execution of the terminal activities using EHLL provider with Studio/Robot versions older than 2021.10.
* Fixed a bug in the EHLLAPI provider that prevented the proper detection of fields starting in row 1, column 1.
* Fixed a bug occurring when a previously closed TerminalConnection object tried to reopen the connection. Now, it throws an exception when a workflow tries to use it.


## v2.4.1

Release date: May 19, 2022

# Bug fixes

* Fixed a compatibility issue with Studio and Robot version 2022.4.


## v2.4.0

Release date: November 15, 2021

# New features and improvements

The UiPath.Terminal.Activities package is now compatible with .NET 5. Projects created with project compatibility Windows (.NET 5 with Windows support) and using 3rd party terminal emulators (EHLL, IBM Personal Communications, etc) require a 64-bit architecture.

Support was added for Next Screen, Previous Screen, and Hold Screen control keys for the VT family of terminals.

Support was added for Wyse terminals in the Configure Connection window for the following modes of operation: Wyse 50+, Wyse 60, and Wyse 350.

New configuration options have been added to the Configure Connection window, VT terminals being available with the following options: VT100, VT101, VT 102, VT220, VT240, VT320, VT340, and VT420.

# Bug fixes

* Fixed a bug occurring on the recording function. Now, before recording any activities, the Start Recorder button checks if there is a sequence inside the Terminal Session Scope.
* Fixed a bug occurring on UiPath.Terminal.Activities package v2.1.0 that was causing IBM Personal Communications to stop working when any of the activities were run.
* Fixed a bug occurring when the Wizard button was accessed without a connection string. Now, the Wizard button is disabled if the connection string is null, it includes a variable, or the SSH is used.


## v2.3.0

Release date: July 27, 2021

# New features and improvements

The Terminal Session activity now supports selecting the Screen Size of a session before creating it, thus enabling you to directly create a session with the screen size of your choice.

# Bug fixes

An exception was thrown when the Text property of the Set Field activity was empty.

The Send Keys Secure activity typed an incorrect value when the string it was supposed to type contained the @ symbol.

When creating a Terminal Session with Rocket BlueZone v8.1, the Control Key Reset did not work properly.


## v2.2.0

Release date: March 19, 2021

# New features and improvements

You can now use CTRL, ALT, and SHIFT keys in combination with F-keys when automating with the Terminals package.

To prevent issues when certain fonts are missing from the terminal machines you are automating, the default fallback font has been changed to Consolas.

We have added support for SCO ANSI and Tandem T653x terminals in the Terminal Session activity.

# Bug fixes

If the keyboard was locked after sending keys to the terminal machine, the next activities in the workflow failed due to timeout. To avert this, the behavior has been changed and now the activity that causes the keyboard to become locked throws an issue.Fixed an issue with Direct Connection where text sent to the terminal was not visible on screen.When using 5250 terminal types, and the screen had AutoEnter fields, checking for keyboard lock after sending keys failed.


## v2.1.0

Release date: December 17, 2020

# New features and improvements

The Terminal Session recorder can now be reopened at any point after dragging the activity to the Workflow Designer by using the Start Recorder button in the body of the activity.

Starting with this update, the Terminal Activities pack now supports automating in ANSI terminal emulation.

Resolution change support has been added for Direct Connection and HLLAPI providers.

# Bug fixes

* At design time, the validation did not fail if Internal Provider was used in a workflow upgraded to the new Direct Connection method.
* Fixed an issue with Direct Connection that caused a crash when writing into certain input fields.
* Fixed multiple localization issues throughout the activities in this pack.
* Proper error handling has been added when performing an invalid SSH login.
* Fixed an issue that did not allow establishing a connection when using IBM Personal Communicator.
* The Send Control Key activity would sometimes fail to process the current screen due to execution timing.
* Fixed an issue that caused sending the Reset key with the Send Control Key activity to not function when the terminal keyboard was inhibited.
* Page Up and Page Down controls were incorrectly mapped for the 5250 emulator.


## v2.0.1

Release date: September 28, 2020

# New features and improvements

In order to offer a more reliable and versatile solution for creating automation processes with Terminals, the Terminal Activities Pack now harnesses TurboSoft'sTTwin OCX interface, which significantly improves the way Windows-based applications access legacy software systems.

# Breaking changes

* Implementations using the Internal Provider are no longer supported. In the case of such workflows, the provider in the Terminal Session activity has to be changed to Direct Connection for the activities to function properly. Running any old workflows with this new package results in unforeseeable consequences and is not recommended.

# Known Issues

* Using the @ symbol with the Send Keys Secure activity causes an incorrect value to be typed in when using the IBM EHLLAPI provider.


## v1.3.4

Release date: October 18, 2019

# New features and improvements

We have further increased language support by adding Turkish, Portuguese (Portugal), Spanish (Latin America), and Spanish (Spain) to the list of languages present in the UiPath Platform.


## v1.3.3

Release date: August 26, 2019

# New features and improvements

Three new languages, German, South Korean, and Portuguese are available for the UiPath.Terminal.Activities package.


## v1.3.2

Release date: June 26, 2019

# New features and improvements

We want to reach out to the entire world and make automation a language everyone can speak. So, starting with this release, the entire platform is available in Chinese.

Chinese can only be used in this pack when installed in Studio v2019.4.4 or v2019.7 or above.


## v1.3.1

Release date: April 25, 2019

# New features and improvements

To align with the Package Signing feature, the Terminal activities pack has been officially signed by UiPath.


## v1.3.0

Release date: January 10, 2019

# New features and improvements

This new year brings two more languages in the entire UiPath Platform - French and Russian. Since we layed down the foundations of localization in our previous release, we are continuing our efforts in bringing you a more immersive experience and lowering the language barrier bit by bit.


## v1.2.6857.19163

Release date: October 10, 2018

# New features and improvements

The moment is finally here - the entire UiPath Platform has been localized, so that you can have a truly immersive experience, from install to design and execution. Now, besides English, you can access everything, including our online documentation, in Japanese.


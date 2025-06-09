# User Events Monitoring

This topic presents the most frequent reasons for which the User Events Monitoring might not work properly, and how to solve these issues.

* If you use the BlockEvent option with trigger activities you must also set the EventType from the Input section to EVENT_SYNCHRONOUS.
* In order for the selectors of trigger activities to be properly validated, they must not be partial, and must not contain anchors or idx attributes.
* It is recommended to avoid using the Monitor Events activity on the following: JavaFX Apps
PDF files
Windows 10 Apps
Displays with 4k resolutions
Display scaling set to 150%

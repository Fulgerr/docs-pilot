# Recording Types

There are five types of recordings available in Studio:

* Basic – Generates a full
                selector for each activity and no container. The resulted automation is slower than
                one that uses containers and is suitable for single activities.
* Desktop – Suitable for all
                types of desktop apps and multiple actions. It is faster than the Basic recorder, and generates a container (with the selector of the top-level window) in
                which activities are enclosed, and partial selectors for each activity.
* Web – Designed for
                    recording in web apps and browsers, generates containers and uses the
                        Simulate Type/Click input method by default. It is recommended to run your web
                    automations on Internet Explorer 11 and above, Mozilla Firefox 50 or above, or
                    the latest version of Google Chrome.
* Image – Used to record
                virtualized environments (such as VNC, virtual machines, Citrix, and more) or SAP.
                It permits only image, text and keyboard automation, and requires explicit
                positioning.
* Native Citrix - Is the
                equivalent of the Desktop recorder, but for Citrix environments. Only use
                this in your Native Citrix automation projects. Find out more about Native Citrix
                        Support .

To see all the available types of recordings and select the one most suited for your
            project, click Recording, in the Wizards group of the Design ribbon
            tab.

![4b37ec0-recording_wizards=GUID-135D2619-E68E-4300-B985-84A8B88D6339=1=en=Default](/images/4b37ec0-recording_wizards=GUID-135D2619-E68E-4300-B985-84A8B88D6339=1=en=Default.png)

All recording types come with their own controllers (or toolbars) that give you access to
            actions particular to each environment, but also some common ones.

![acdd02a-Basic_Recording=GUID-EC666D17-2B6C-455B-9EF0-8FE8FE6D1D8F=1=en=Default](/images/acdd02a-Basic_Recording=GUID-EC666D17-2B6C-455B-9EF0-8FE8FE6D1D8F=1=en=Default.png)

![b49567e-desktop_recording=GUID-63393177-2AF6-4BC0-B1DC-EB919F0AB373=1=en=Default](/images/b49567e-desktop_recording=GUID-63393177-2AF6-4BC0-B1DC-EB919F0AB373=1=en=Default.png)

![274e5fe-web_recording=GUID-778738F3-77C7-4DB0-B876-3B3AA2DB2B2F=1=en=Default](/images/274e5fe-web_recording=GUID-778738F3-77C7-4DB0-B876-3B3AA2DB2B2F=1=en=Default.png)

The Desktop, Basic and Web Recording toolbars are quite similar and
            enable you to:

* Automatically record multiple actions
                performed on the screen
* Manually record single actions,
                    such as: Starting or closing an
                        application or web browser Clicking an interface element Selecting an option from a
                        drop-down list Selecting a check box Simulating keystrokes or
                        keyboard shortcuts Copying text from a UI
                        element or performing screen scraping Looking for elements or
                        waiting for them to vanish Finding an image Activating a window

The Image Recording toolbar enables you to:

* Click an image or text
* Simulate keystrokes or hotkeys
* Select and copy text from a window
* Scrape UI elements
* Look for elements or wait for them to
                vanish
* Find an image or wait for it to
                vanish
* Activate a window The Image
                        Recording toolbar supports only manual recording (single
                    actions).

The Native Citrix Recording toolbar enables you to:

* Automatically record multiple actions
                performed on the screen
* Manually record single actions,
                    such as: Clicking an interface element Selecting an option from a
                        drop-down list Selecting a check box Simulating keystrokes or
                        keyboard shortcuts Copying text from a UI
                        element or performing screen scraping Looking for elements or
                        waiting for them to vanish Finding an image Activating a window

To figure out if you should use automatic or manual recording in your project, you should
            better understand the differences between the recording types and their
            capabilities.


| Automatic Recorder | Manual Recorder |
| --- ---| Left-click on                                     windows, buttons, check boxes, drop-down lists etc.Text typing | Keyboard                                     shortcutsModifier                                     keysRight-clickMouse hoverGetting textFind elements and                                     imagesCopy to                                     Clipboard |

Keyboard shortcuts that you can use while recording:

* F2 – pauses for 3 seconds. A
                countdown timer is displayed in the bottom left corner of the screen. Can be useful
                with menus that automatically hide.
* Esc – exits the automatic or manual
                recording. If you press the Escape key again, the recording is saved as a sequence,
                and you return to the main view.
* Right-click – exit the recording.

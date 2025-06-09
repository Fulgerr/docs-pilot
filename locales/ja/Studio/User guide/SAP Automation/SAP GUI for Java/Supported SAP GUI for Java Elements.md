# Supported SAP GUI for Java Elements

The SAP interfaces contain a variety of specific controls with which you can interact as exemplified in this page.

### SAP Buttons

Represents any button found in the SAP GUI for Java windows. There are several types, each defined by a particular element:

# Icons

Icons are interactive buttons which do not display text labels.

![icons=GUID-0EA92897-6D90-4893-94A6-FCFFF84BCE58=1=en=Default](/images/icons=GUID-0EA92897-6D90-4893-94A6-FCFFF84BCE58=1=en=Default.png)

# Push Buttons

A push button is a simple UI element which gives you direct access to a command in the application.

![push_buttons=GUID-3D035374-7F31-4747-B712-8259CFBBEAA0=1=en=Default](/images/push_buttons=GUID-3D035374-7F31-4747-B712-8259CFBBEAA0=1=en=Default.png)

# Radio Buttons

Radio buttons present a set of options. A list contains at least two radio buttons, and you can only select one.

![radio_button=GUID-17012179-FEBC-4838-B084-9CAD0BC0AC12=1=en=Default](/images/radio_button=GUID-17012179-FEBC-4838-B084-9CAD0BC0AC12=1=en=Default.png)

You can use the Click activity to interact with buttons.


### SAP Checkbox

Checkbox elements represent a list of multiple choices. You can select one, more, or no options.

![checkbox=GUID-6D1EDF4F-EEFF-48FE-9B5D-15816928732E=1=en=Default](/images/checkbox=GUID-6D1EDF4F-EEFF-48FE-9B5D-15816928732E=1=en=Default.png)

You can use the Click activity to interact with checkboxes.


### SAP Context Menu

Represents a list of items inside a context menu. Note that multiple child context menus can be available in a parent context menu.

![context_menu=GUID-037E810F-B3A5-41C9-89A7-B4E73CD5BA73=1=en=Default](/images/context_menu=GUID-037E810F-B3A5-41C9-89A7-B4E73CD5BA73=1=en=Default.png)

You can use Java selectors and the Click activity to interact with the SAP Context Menu.


### SAP Dialog Box

Represents an external window which can hold different types of other SAP controls such as buttons, text messages, or pop-up windows.

![dialog_box=GUID-CD14767D-0DBB-4464-9537-052FCC197B64=1=en=Default](/images/dialog_box=GUID-CD14767D-0DBB-4464-9537-052FCC197B64=1=en=Default.png)

Selectors inside a dialog box are generated according to the element they represent.

If you want to close a dialog box using the Close button, you need to use the AA element detection framework.

You can use UIAutomation activities such as Click or Type Into to interact with dialog boxes.


### SAP Dropdown Lists

Dropdown lists allow you to select items from predefined lists.

![dropdown=GUID-1E82C865-A1C0-43D2-A916-71AC24828040=1=en=Default](/images/dropdown=GUID-1E82C865-A1C0-43D2-A916-71AC24828040=1=en=Default.png)

You can use the Select Item activity to interact with list items.


### SAP Input Field

Represents a specialized field which accepts user input.

![input_field=GUID-2026BBEB-9EB6-4434-8995-521004A4FED2=1=en=Default](/images/input_field=GUID-2026BBEB-9EB6-4434-8995-521004A4FED2=1=en=Default.png)

You can use the Type Into activity to interact with input fields.


### SAP Logon

SAP Logon is a locally installed program that you use to directly log on to an SAP system.

![logon=GUID-5C3283FE-6B4C-44F5-AC7D-F04CB06A03F4=1=en=Default](/images/logon=GUID-5C3283FE-6B4C-44F5-AC7D-F04CB06A03F4=1=en=Default.png)

You can use the Click activity to open SAP.


### SAP Statusbar

Represents a section at the bottom of the SAP GUI for Java window which displays messages. It does not show system and login information.

![status_bar=GUID-4694EF58-21FC-4C99-8041-2F743E016591=1=en=Default](/images/status_bar=GUID-4694EF58-21FC-4C99-8041-2F743E016591=1=en=Default.png)

You can use the Get Attribute activity to read the status properties from the SAP Statusbar.

This SAP control is not supported by Recording in Studio.

# SAP Session Information

Displays detailed information about the current SAP session, such as System, Client, logged User or current opened program and transaction.

![session_data=GUID-B1EF8971-FE9B-4216-91C1-E00A309E23AA=1=en=Default](/images/session_data=GUID-B1EF8971-FE9B-4216-91C1-E00A309E23AA=1=en=Default.png)

The following optional selector attributes are available in UIExplorer, and can be used with other activities such as the Get Attribute activity when you build your SAP automation:

sapClient, sapLanguage, sapProgram, sapScreen, sapSession, sapSysName, sapSysNumber, sapSysSessionId, sapTransaction, sapUser

![session_attrib=GUID-DBBA1945-39A3-4DFA-AEB6-C79DFFE70A52=1=en=Default](/images/session_attrib=GUID-DBBA1945-39A3-4DFA-AEB6-C79DFFE70A52=1=en=Default.png)


### SAP Tab

SAP Tab represents a set of buttons which let you access specific information and controls.

![tab=GUID-18D8DBBF-AC1D-44D5-BA63-363B668E021E=1=en=Default](/images/tab=GUID-18D8DBBF-AC1D-44D5-BA63-363B668E021E=1=en=Default.png)

You can use the Click activity to select a single tab at a time, or you can use the Select Item activity to choose the tab of interest from a list.

# Special automation case

Some SAP transactions have slash / in their names, which may lead to identification issues, while using a wildcard in the selector.

For example, in SAP Transaction: /COCKPIT/1, the selector for one of SAP Tab inside the transaction can be:

<sap id='usr/subSUB_MAIN:/COCKPIT/SAPLDISPLAY46:0389/subSUB_HDR:/COCKPIT/SAPLDISPLAY46:04051/tabsG_STRIP_HDR/tabpTAB4' />

The dynamic part of the selector is: SAPLDISPLAY46:0389, where the number 0389 is dynamically changing and does not allow a stable identification.

The structure of the selector is:

![651d362-SAP_Tab_-_selector_structure=GUID-9251D1A3-E88D-4826-B1A2-CC9B020FA3FD=1=en=Default](/images/651d362-SAP_Tab_-_selector_structure=GUID-9251D1A3-E88D-4826-B1A2-CC9B020FA3FD=1=en=Default.png)

For purpose of stable identification, you would need to use wildcard in between hierarchy separators and then all (and only) the slashes between those separators/slashes need to be replaced by ?

Before <sap id='usr/subSUB_MAIN:/COCKPIT/SAPLDISPLAY46:0389/subSUB_HDR:/COCKPIT/SAPLDISPLAY46:04051/tabsG_STRIP_HDR/tabpTAB4' />

After <sap id='usr/subSUB_MAIN:?COCKPIT?SAPLDISPLAY46:038*/subSUB_HDR:/COCKPIT/SAPLDISPLAY46:04051/tabsG_STRIP_HDR/tabpTAB4' />


### SAP Tables

The SAP Table represents a standard set of controls for elements displayed in a tabular structure.

# Common Operations

In SAP, there are multiple types of tables available. The most commonly used are Standard (default) tables, Grid Tables and ALV Tables. All kind of SAP Tables can be automated with Studio.

You can use the following activities to interact with SAP Tables and their content:

* Click
* Get Text
* Type Into
* Check


### SAP Standard Table

The SAP Standard Table supports the following common operations:

ClickGet TextType IntoCheck

![standard_table=GUID-A87A2285-6C1C-484A-BCA6-18C52798AE8E=1=en=Default](/images/standard_table=GUID-A87A2285-6C1C-484A-BCA6-18C52798AE8E=1=en=Default.png)


### SAP Grid Table

The SAP Grid Table supports Select/Deselect operations, Data Scraping, and the following common operations:

ClickGet TextType IntoCheck

![grid_table=GUID-D3098944-B8C4-43FF-A9E6-215720464E1A=1=en=Default](/images/grid_table=GUID-D3098944-B8C4-43FF-A9E6-215720464E1A=1=en=Default.png)

# Select/Deselect

Using the Click activity or the Check activity, you can perform the following operations in your SAP automation project:

* Select/Deselect Column
* Select/Deselect Row
* Select/Deselect All


### SAP ALV Table

The SAP ALV Table supports all common operations that are available, as mentioned above, as well as Data Scraping for simple header tables and Screen Scraping. You can extract a single ALV table on the SAP screen.

![alv=GUID-F764DEA2-8695-4A20-A1DF-A3CCDA74C9C5=1=en=Default](/images/alv=GUID-F764DEA2-8695-4A20-A1DF-A3CCDA74C9C5=1=en=Default.png)


### SAP Textedit

The SAP Textedit control represents an editable text field/editor.

![textedit=GUID-188A2BAA-0495-4083-AA65-AD73229C0849=1=en=Default](/images/textedit=GUID-188A2BAA-0495-4083-AA65-AD73229C0849=1=en=Default.png)

You can use the following activities to interact with this control:

* The Type Into activity for text fields.
* The Send Hotkey activity for buttons which support hotkeys or the Click Image activity for buttons.


### SAP Toolbar

The SAP Toolbar represents a set of buttons, which you can interact with. In SAP, there are multiple types of toolbars, depending on the SAP Transaction or SAP Program.

* SAP System Toolbar
* SAP Application Toolbar
* SAP Special Toolbar
* SAP GridTable Toolbar
* SAP Generic Object Services

You can use the Click activity to interact with buttons inside the toolbars.

This SAP control is not supported by Recording in Studio.


### SAP Tree

The SAP Tree represents a list of elements organized in a tree structure. Several types of SAP Tree controls are available:

* Simple Tree
* List Tree
* Column Tree

You can use the Click or the Get Text activity to interact with a node or an item in any of the SAP Tree control types.

We recommend you use the SimulateClick property when you interact with SAP Trees.


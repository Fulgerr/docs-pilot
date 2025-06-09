# Supported SAP WinGUI Elements

The SAP interfaces contain a variety of specific controls with which you can interact as exemplified in this page.

### SAP Buttons

Represents any button found in the SAP WinGUI windows. There are several types, each defined by a particular element:

# Icons

Icons are interactive buttons which do not display text labels.

![024045a-icons=GUID-5C685C51-DC7A-41A1-A805-5B08C215C86F=1=en=Default](/images/024045a-icons=GUID-5C685C51-DC7A-41A1-A805-5B08C215C86F=1=en=Default.png)

# Push Buttons

A push button is a simple UI element which gives you direct access to a command in the application.

![b627c79-push_button=GUID-CE57C502-36F9-4858-A0C4-945516383B50=1=en=Default](/images/b627c79-push_button=GUID-CE57C502-36F9-4858-A0C4-945516383B50=1=en=Default.png)

# Radio Buttons

Radio buttons present a set of options. There are at least two radio buttons in a list, and you can only select one.

![5b54b8f-radio_button=GUID-B29D71CB-E2E3-449E-BD64-A8913A35CBB3=1=en=Default](/images/5b54b8f-radio_button=GUID-B29D71CB-E2E3-449E-BD64-A8913A35CBB3=1=en=Default.png)

You can use the Click activity to interact with buttons.


### SAP Calendar

The SAP Calendar allows you to select single dates or periods of time.

![7c59ea7-calendar=GUID-30D5D931-B500-4FD3-8318-52084CF67D62=1=en=Default](/images/7c59ea7-calendar=GUID-30D5D931-B500-4FD3-8318-52084CF67D62=1=en=Default.png)

You can use the Select Dates in Calendar activity to interact with the SAP Calendar.

![6ca88e4-Select_Dates_in_Calendar=GUID-36228ACA-7DC5-42BF-8808-35B1C9CCF0DC=1=en=Default](/images/6ca88e4-Select_Dates_in_Calendar=GUID-36228ACA-7DC5-42BF-8808-35B1C9CCF0DC=1=en=Default.png)

This SAP control is not supported by Recording in Studio.


### SAP Checkbox

Checkbox elements represent a list of multiple choices. One, more, or no options can be selected.

![e86eba8-checkboxes=GUID-AE0D34BC-F8FF-4D15-97DA-FB54CEF75FE3=1=en=Default](/images/e86eba8-checkboxes=GUID-AE0D34BC-F8FF-4D15-97DA-FB54CEF75FE3=1=en=Default.png)

You can use the Click activity to interact with checkboxes.


### SAP Context Menu

Represents a list of items inside a context menu. Note that multiple child
            context menus can be available in a parent context menu.

![532c48e-context_menu=GUID-E3DA224E-0EB2-447B-BBB4-DDAD3D4AB912=1=en=Default](/images/532c48e-context_menu=GUID-E3DA224E-0EB2-447B-BBB4-DDAD3D4AB912=1=en=Default.png)

You can use the Click activity to interact with the SAP
            Context Menu. The AA element detection framework is
            required for interactive selection.


### SAP Dialog Box

Represents an external window which can hold different types of other SAP
            controls such as buttons, text messages, or pop-up windows.

![37f23d6-input_dialog_box=GUID-90E58A05-5BA8-4D4B-8EE2-E65537210122=1=en=Default](/images/37f23d6-input_dialog_box=GUID-90E58A05-5BA8-4D4B-8EE2-E65537210122=1=en=Default.png)

Selectors inside a dialog box are generated according to the element they
            represent.

If you want to close a dialog box using the Close button, you need to
            use the AA element detection framework.

You can use UIAutomation activities such as Click or Type Into to interact with dialog
            boxes.


### SAP Dropdown Lists

Dropdown lists allow you to select items from predefined lists.

![824522e-dropdown_lists=GUID-D69A3E7C-0D7B-425F-9434-95E12DC45A1E=1=en=Default](/images/824522e-dropdown_lists=GUID-D69A3E7C-0D7B-425F-9434-95E12DC45A1E=1=en=Default.png)

You can use the Select Item activity to interact with list items.


### SAP HTML Content

The HTML controls are used to display HTML content inside the SAP WinGUI.

![6b7907b-html=GUID-CDC023EB-256E-456C-B1B4-2F00365276E2=1=en=Default](/images/6b7907b-html=GUID-CDC023EB-256E-456C-B1B4-2F00365276E2=1=en=Default.png)

To interact with an HTML page inside the SAP WinGUI, you need to use the AA element detection framework. UIAutomation activities can be used to build processes for SAP HTML content.


### SAP Input Field

Represents a specialized field which accepts user input.

![630062c-input_field=GUID-3DCAF385-C318-4DA6-A8B0-532AF12E55A9=1=en=Default](/images/630062c-input_field=GUID-3DCAF385-C318-4DA6-A8B0-532AF12E55A9=1=en=Default.png)

You can use the Type Into activity to interact with input fields.


### SAP Logon

SAP Logon is a locally installed program that you use to directly log on to an SAP system.

![a01869b-logon=GUID-24FB1244-186F-4AD2-ACD2-E73D88A3F07F=1=en=Default](/images/a01869b-logon=GUID-24FB1244-186F-4AD2-ACD2-E73D88A3F07F=1=en=Default.png)

You can use the SAP Logon activity to open SAP.

This activity requires 2 parameters:

* The exact SAP connection name from the SAP Logon or the SAP Logon Pad window used to log on to your SAP system
* The path to your SAP Logon or SAP Logon Pad program. The default path is obtained from the corresponding system registry entry. The Indicate on screen function is not required. The SAP scripting interface is used to connect to your SAP system.


### SAP Login

Provides the possibility to log into an SAP system.

![959a641-logon_screen=GUID-ABD8E5B4-EB47-4410-8CA7-73FEA8C3FE2F=1=en=Default](/images/959a641-logon_screen=GUID-ABD8E5B4-EB47-4410-8CA7-73FEA8C3FE2F=1=en=Default.png)

You can then use the SAP Login activity.

![52f8930-SAP_Login=GUID-CAF0C31B-4CDE-4785-960F-74400DFD4DCD=1=en=Default](/images/52f8930-SAP_Login=GUID-CAF0C31B-4CDE-4785-960F-74400DFD4DCD=1=en=Default.png)

The Multiple Logon Option dropdown gives you the possibility to decide which action should be performed if a user attempts to log into the system several times and the license information for multiple logon window popups is shown. You can select from the following options:

* Continue with this logon and end any other logons in system
* Continue with this logon, without ending any other logons in system
* Terminate this logon


### SAP Menu

Allows you to select items from the SAP Menu. The SAP Menu is only available in the main SAP WinGUI window.

![cccb8ad-sap_menu=GUID-22D4558F-6B65-4591-9CD8-4D494D03AF0A=1=en=Default](/images/cccb8ad-sap_menu=GUID-22D4558F-6B65-4591-9CD8-4D494D03AF0A=1=en=Default.png)

You can use the SAP Select Menu Item activity to interact with a menu item.

![b577749-Select_Menu_Item=GUID-0F578192-D7DD-4AF4-B225-58D56BDACF8C=1=en=Default](/images/b577749-Select_Menu_Item=GUID-0F578192-D7DD-4AF4-B225-58D56BDACF8C=1=en=Default.png)

This SAP control is not supported by Recording in Studio.


### SAP Picture

Displays a picture in the SAP WinGUI.

![2ccd3e5-picture_control=GUID-9D7458D3-377C-41C8-8868-BDAA24D977C8=1=en=Default](/images/2ccd3e5-picture_control=GUID-9D7458D3-377C-41C8-8868-BDAA24D977C8=1=en=Default.png)

You can use the SAP Click Picture on
                Screen activity to click the specified image.

![2de326b-Click_Picture_on_Screen=GUID-69013DAB-9F3B-4CAC-893C-3D88AEBDEDB3=1=en=Default](/images/2de326b-Click_Picture_on_Screen=GUID-69013DAB-9F3B-4CAC-893C-3D88AEBDEDB3=1=en=Default.png)

This SAP control is not supported by Recording in Studio.


### SAP Statusbar

Represents a section at the bottom of the SAP WinGUI window which displays messages. It does not show system and login information.

![69ef8cf-statusbar=GUID-DCBED03A-0041-45AC-9A86-83674B1DAC15=1=en=Default](/images/69ef8cf-statusbar=GUID-DCBED03A-0041-45AC-9A86-83674B1DAC15=1=en=Default.png)

You can use the SAP Read Statusbar activity to extract the message type, text, and data from the SAP Statusbar.

![806a9be-Read_Statusbar=GUID-A66B56ED-9614-48FC-B50A-0E6913C1D78E=1=en=Default](/images/806a9be-Read_Statusbar=GUID-A66B56ED-9614-48FC-B50A-0E6913C1D78E=1=en=Default.png)

This SAP control is not supported by Recording in Studio.

# SAP Session Information

Displays detailed information about the current SAP session, such as System, Client, logged User or current opened program and transaction.

![1dc42a1-optional_attributes_sap_statusbar_sap_interface=GUID-2F10B63F-A18C-424F-A190-303EF2134798=1=en=Default](/images/1dc42a1-optional_attributes_sap_statusbar_sap_interface=GUID-2F10B63F-A18C-424F-A190-303EF2134798=1=en=Default.png)

The following optional selector attributes are available in UIExplorer, and can be used with other activities such as the Get Attribute activity when you build your SAP automation:

sapClient, sapLanguage, sapProgram, sapScreen, sapSession, sapSysName, sapSysNumber, sapSysSessionId, sapTransaction, sapUser

![386fd69-optional_attributes_sap_statusbar=GUID-EDE09CE5-A9B0-489A-8C0C-1A4AFAF98F06=1=en=Default](/images/386fd69-optional_attributes_sap_statusbar=GUID-EDE09CE5-A9B0-489A-8C0C-1A4AFAF98F06=1=en=Default.png)


### SAP Tab

SAP Tab represents a set of buttons which let you access specific information and controls.

![be9fc60-sap_tab=GUID-19F7CED2-3CD3-434D-A92A-7DA06A659E70=1=en=Default](/images/be9fc60-sap_tab=GUID-19F7CED2-3CD3-434D-A92A-7DA06A659E70=1=en=Default.png)

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

In SAP, there are multiple types of tables available. The most common used are Standard (default) tables, Grid Tables and ALV Tables. All kind of SAP Tables can be automated with Studio.

You can use the following activities to interact with SAP Tables and their content:

* Click
* Get Text
* Type Into
* Check


### SAP Standard Table

The SAP Standard Table supports all of the common operations that are available, as mentioned above.

![97aeb92-table_2=GUID-3C075226-8685-411D-9C07-DD1566622135=1=en=Default](/images/97aeb92-table_2=GUID-3C075226-8685-411D-9C07-DD1566622135=1=en=Default.png)


### SAP Grid Table

The SAP Grid Table supports all of the common operations that are available, as mentioned above, as well as Select/Deselect operations and Data Scraping.

![1eb7aaf-table_1=GUID-001AF6CE-F754-4B15-850E-618C4883195A=1=en=Default](/images/1eb7aaf-table_1=GUID-001AF6CE-F754-4B15-850E-618C4883195A=1=en=Default.png)

# Select/Deselect

With help of the Click activity or the Check activity you are able to perform all the necessary operations during your SAP automation project, such as:

* Select/Deselect Column
* Select/Deselect Row
* Select/Deselect All

# Table Cell Filtering

You can perform all the common operations, as mentioned above, on a table cell.

Using the Table Cell Scope activity, you can also filter content for table cells (for columns and rows). You can identify columns in an SAP Table by its display name, but also by other attributes, such as ColumnName. Additionally, you can filter on columns and rows to use any other property to identify elements.

In case the Column Tooltip has a similar name to another column, we automatically switch the identification of that column to a different attribute, such as ColumnName, as seen in the example below.You can also use advanced filtering on Row Number, which allows identification based on multiple attributes, as seen in the example below.


### SAP ALV Table

The SAP ALV Table supports all common operations that are available, as mentioned above, as well as Data Scraping for simple and multiple header tables and Screen Scraping. One or multiple ALV tables on the SAP screen can be extracted.

![e3f7683-SAP_ALV_Table=GUID-04700D41-279D-40D6-A291-E8CBD355DB5B=1=en=Default](/images/e3f7683-SAP_ALV_Table=GUID-04700D41-279D-40D6-A291-E8CBD355DB5B=1=en=Default.png)


### SAP ALV Hierarchical Table

The SAP ALV Hierarchical Table represents a list of elements organized in a table with hierarchical structure.

![98c9ada-SAP_ALV_Hierarchical_Table=GUID-CFDBB5CD-D40F-40A6-B83C-2B29B37D3BDE=1=en=Default](/images/98c9ada-SAP_ALV_Hierarchical_Table=GUID-CFDBB5CD-D40F-40A6-B83C-2B29B37D3BDE=1=en=Default.png)

You can use the Expand ALV Hierarchical Table activity to identify any cell inside a SAP ALV Hierarchical Table. After the identification of the cell, all typical UI activities can be performed, such as Click, Get Text, and others.

There are two ways of working with the activity: at design time or at run time.

# Design time

During the design time, you have to select any cell of interest inside the table. The activity captures the coordinates of this cell in activity. The changes are possible anytime.

# Run time

The target cell is set in focus and the corresponding UiElement is returned as an output argument.

# Navigate within the table

For example, if you want to get information about the flight time (6:01) for a specific airline (AA) and for a specific flight number (17).

![6e20c4f-SAP_ALV_Hierarchical_Table_-_How_it_works=GUID-E1B363AD-DF48-4408-91EA-9224F76EDC8B=1=en=Default](/images/6e20c4f-SAP_ALV_Hierarchical_Table_-_How_it_works=GUID-E1B363AD-DF48-4408-91EA-9224F76EDC8B=1=en=Default.png)

Level / Focused column: defines which element is set as the focused.

Level 0 / Header column: defines which column and value to find in the header column.

Level 1 / Position column: defines which column and value to find in the position column.

The coordinates of cell containing 6:01 are stored as Output value, variable type UiElement.


### SAP ALV Tree List

The SAP ALV Tree represents a list of elements organized in a tree structure.

![f72b40d-SAP_ALV_Tree_List=GUID-C0DDAF21-F7EA-4A9F-8D8B-CA7C8E5E6CEF=1=en=Default](/images/f72b40d-SAP_ALV_Tree_List=GUID-C0DDAF21-F7EA-4A9F-8D8B-CA7C8E5E6CEF=1=en=Default.png)

You can use the Expand ALV Tree activity to select an ALV node and display the node path in the activity. This enables you to use any other supported activities to work with the specified element.

![3bad254-Expand_SAP_ALV_Tree=GUID-D366F400-ABB5-40DE-98C2-EEC0AD936511=1=en=Default](/images/3bad254-Expand_SAP_ALV_Tree=GUID-D366F400-ABB5-40DE-98C2-EEC0AD936511=1=en=Default.png)


### SAP Textedit

The SAP Textedit control represents an editable text field/editor.

![c295a19-textedit_control=GUID-D840282D-367C-47C8-9C95-409611342C49=1=en=Default](/images/c295a19-textedit_control=GUID-D840282D-367C-47C8-9C95-409611342C49=1=en=Default.png)

You can use the following activities to interact with this control:

* The Type Into activity for text fields.
* The Send Hotkey activity for buttons which support hotkeys or the Click Image activity for buttons.


### SAP Toolbar

The SAP Toolbar represents a set of buttons, which you can interact with. In SAP, there are multiple types of toolbars, depending on the SAP Transaction or SAP Program.

![b210d81-SAP_toolbars=GUID-C7B3E9E2-6B09-44B9-ADA3-DDDDEF6A88C2=1=en=Default](/images/b210d81-SAP_toolbars=GUID-C7B3E9E2-6B09-44B9-ADA3-DDDDEF6A88C2=1=en=Default.png)

* SAP System Toolbar (1)
* SAP Application Toolbar (2)
* SAP Special Toolbar (3)
* SAP GridTable Toolbar (4)
* SAP Generic Object Services (5)

You can use the Click Toolbar Button activity to interact with buttons inside the toolbars.

![fc933ac-Click_Toolbar_Button=GUID-EC0293E8-9140-4321-A145-C75C50A8843A=1=en=Default](/images/fc933ac-Click_Toolbar_Button=GUID-EC0293E8-9140-4321-A145-C75C50A8843A=1=en=Default.png)

This SAP control is not supported by Recording in Studio.


### SAP Transaction Code

Represents an alphanumerical code which allows you to access SAP functions or running SAP programs.

Only the transaction code is required when you use the SAP Call Transaction activity.

The transaction code is executed in the current SAP GUI window.

![2c160ed-Call_Transaction_Activity=GUID-646A879E-C7C5-4040-BB47-751D313EE6C6=1=en=Default](/images/2c160ed-Call_Transaction_Activity=GUID-646A879E-C7C5-4040-BB47-751D313EE6C6=1=en=Default.png)

When you provide a transaction code (for example VA01), the activity sends the /nVA01 + Enter (keystroke) command to call a transaction.Please note that unsaved changes in the current transaction are discarded without warning.


### SAP Tree

The SAP Tree represents a list of elements organized in a tree structure. Several types
            of SAP Tree controls are available:

* Simple Tree
* List Tree
* Column Tree

You can use the Click or the Get Text activity to
            interact with a node or an item in any of the SAP Tree control types.

It is recommended to use
            the SimulateClick property
            when you interact with SAP Trees.

# Expand Tree

If the tree
                contains a large number of child elements, selection is done as follows:

1. Expand the tree in SAP WinGUI and select the element of interest.
2. Use Indicate on screen to select the entire SAP Tree.

The nodes to the selected item are displayed in the activity.

This SAP control is not
                supported by Recording in Studio.

If
                the tree is collapsed and the node or item of interest is not visible, you need to
                use the SAP Expand Tree activity, which
                expands the parent tree to an active node or an active item.

![c3c965a-Expand_Tree_Activity=GUID-B1816F3F-BFFC-424D-AB11-98F708B02EA4=1=en=Default](/images/c3c965a-Expand_Tree_Activity=GUID-B1816F3F-BFFC-424D-AB11-98F708B02EA4=1=en=Default.png)


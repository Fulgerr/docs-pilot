# The Breakpoints and Bookmarks Panel

# Breakpoints

Breakpoints are used to purposely pause the debugging process on an activity which may
      trigger execution issues. Setting a condition and/or hit count turns the simple breakpoint to
      a conditional one. Adding logging results turns the conditional breakpoint in a conditional
      tracepoint. Adding only a logging message transforms the breakpoint to a simple
      tracepoint.

You can place and modify a breakpoint on any activity as follows:

* from the context menu, right-click an activity and select Toggle Breakpoint;
* by selecting the activity, and clicking the Breakpoints button on the Debug tab;
* by pressing F9 while the desired activity is selected.

A single activity needs to be selected for a breakpoint to be toggled. You can, however,
      toggle as many breakpoints as you see fit. Make sure that the order of activities in the
      workflow is not changed after the breakpoint is set.

Each breakpoint or tracepoint receives a specific icon based on its state. The icon is set on
        the activity and visible in the Breakpoints and Bookmarks panel.

![BreakpointsAndBookmarksPanel=GUID-EA9232DF-CE0D-42D0-9DBE-C65EE25AFB53=1=en=Default](/images/BreakpointsAndBookmarksPanel=GUID-EA9232DF-CE0D-42D0-9DBE-C65EE25AFB53=1=en=Default.png)

TypeDescriptionBreakpointsBreakpoints pause the debugging process before the activity is
                executed. Breakpoints can have the following states:Enabled - Disabled - Conditional BreakpointsConditional breakpoints are breakpoints that depend on a set
                condition and/or a hit count. Conditional breakpoints can have the following
                states:Enabled - Disabled - TracepointsTracepoints are breakpoints with set logged messages. When the
                tracepoint is reached during debugging, the message is logged at trace level.
                Tracepoints can have the following states:Enabled - Disabled - Conditional TracepointsConditional tracepoints have a set condition or hit count, and a
                logged message. The message is logged when the condition is met the number of times
                stated in the hit count field. Conditional tracepoints can have the following
                states:Enabled - Disabled -

To modify the state of a breakpoint or tracepoint select the activity and press F9, click the
        icon in the Breakpoints and Bookmarks panel, or use the Designer or
          Breakpoints and Bookmarks panel context menus. You can also click the
          Breakpoints button on the Debug tab, open the drop-down menu and click
          Toggle Breakpoint.

Breakpoints set during
      design time persist when reopening the automation project. Breakpoints don't persist at
      runtime, only at debugging.

Select a breakpoint in the panel and click the Delete button to remove it. The
          Delete all breakpoints option enables you to delete all the breakpoints in the
        current project. The Enable all breakpoints option helps you enable all breakpoints
        in the currently opened project. Consequently, the Disable all breakpoints option
        disables all breakpoints. Multiple selection is available in the Breakpoints and
          Bookmarks panel.

# Breakpoint Settings

The Breakpoints and Bookmarks panel comes with a set of settings that can be
        individually adjusted for each toggled breakpoint part of the automation project. Click the
           icon to open the window.

![a00031d-breakpoints_settings=GUID-581904B2-4819-4DE2-BD46-7427D7CC4C1E=1=en=Default](/images/a00031d-breakpoints_settings=GUID-581904B2-4819-4DE2-BD46-7427D7CC4C1E=1=en=Default.png)

Please take into
        consideration that any expression added in the Condition field is not
        validated.

# Field Descriptions for Breakpoint
        Settings

The Breakpoint Settings window has the following options:

OptionDescriptionConditionThe condition for the breakpoint. If the condition is met
                  during debugging, the execution breaks and the activity is highlighted.Hit CountSpecifies the number of times the condition must be met before
                  the execution breaks. If the hit count is higher than the number of times the
                  condition can be met, the execution does not stop upon encountering the
                  breakpoint. The maximum hit count value is 32,767.Log MessageSpecifies the message to be logged at trace level when the
                  condition is met. The message is visible in the Output panel. If a
                  condition is not set, the message is still logged.Continue execution when loggingIf selected, the execution is not paused when the condition is
                  met and the specified message is logged. Available only if a log message was
                  previously set.

Settings for any breakpoint in the project are visible upon hovering the breakpoint in the
          Designer panel.

# Context Menu for Breakpoints

Right-click an item in the Breakpoints and Bookmarks panel to open the context menu
        with the following options:

OptionDescriptionDeleteDeletes the selected breakpoints.FocusJumps to the breakpoint in the Designer panel.EnableEnables the selected breakpoints.DisableDisables the selected breakpoints.SettingsOpens the Breakpoint Settings window for adding a
                  condition to the breakpoint.

Breakpoint conditions are not
        evaluated when using Validate File or Validate Project.

# Known Limitations in Windows - Legacy
        Projects

Execution does not pause when a breakpoint is hit if the workflow contains:

* A UI Automation activity where any option is selected for the Wait for page load property.
* Two variables of different types that are called using the same expression.

# Bookmarks

Bookmarks enable you to mark and quickly jump to specific activities inside
        workflows. To place and modify a bookmark, simply right-click any activity and select
          Toggle Bookmark. This labels the activity with a bookmark [insert icon] icon.

You can filter between breakpoints and bookmarks in the panel by using the filter button.
        Similarly to breakpoints, selecting a bookmark in the panel and clicking the Delete
        button removes it from the project. The Delete all bookmarks options enables you to
        delete all the bookmarks in the current project. The Enable all bookmarks option
        helps you enable all bookmarks in the currently opened project. The Previous bookmark
        and Next bookmark options let you navigate between bookmarked activities.

Right-click a bookmark in the Breakpoints and Bookmarks panel to open the context
        menu with the following options:OptionDescriptionDeleteDeletes the selected bookmarks.FocusJumps to the bookmark in the Designer panel.EnableEnables the selected bookmarks.DisableDisables the selected bookmarks.

Deleting a bookmarked activity also deletes its corresponding bookmark. Similarly to
        breakpoints, bookmarks can be added during debugging.

# The Breakpoints and Bookmarks Panel

![BreakpointsAndBookmarksPanel_Details=GUID-7E9188EB-369A-4A1D-888D-8C772C5792E3=1=en=Default](/images/BreakpointsAndBookmarksPanel_Details=GUID-7E9188EB-369A-4A1D-888D-8C772C5792E3=1=en=Default.png)

The Breakpoints and Bookmarks panel displays all breakpoints and bookmarks in the
        current project, together with the file in which they are contained.

The Locations column shows the activity with the toggled breakpoint or bookmark, as
        well as conditions set to breakpoints.

The File Path column displays the file and its location.

For breakpoints, the Message column shows messages to be logged if the condition is
        met. Hover over the breakpoint tag on an activity to view its condition and log message. For
        bookmarks, the Message column lets you type messages that appear when hovering over
        the bookmark tag on an activity.

The Filter button hides or reveals the Breakpoints or Bookmarks
        sections in the panel.

Double-click on a breakpoint or bookmark to see the activity highlighted in the
          Designer panel. Use context menu options in the ribbon to enable or disable
        breakpoints or bookmarks.

To delete multiple breakpoints or bookmarks, select them and click Delete in the
        context menu. This removes the breakpoints or bookmarks from the current file.

The Delete all, Enable all and Disable all breakpoints or bookmarks
        buttons perform actions on all breakpoints or bookmarks listed in the panel, regardless if
        they are selected or not.

The Delete the selection button only deletes the selected elements. Deleting the
          Breakpoints or Bookmarks sections also deletes all breakpoints or bookmarks
        from the current file.

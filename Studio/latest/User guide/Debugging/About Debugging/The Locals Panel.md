# The Locals Panel

The Locals panel displays properties or activities and user-defined variables and arguments. The panel shows:

* Exceptions - the description and type of the exception.
* Arguments
* Variables
* Properties of previously executed activity - only input and output properties are displayed.
* Properties of current activity

The panel is only visible while debugging. Right-click an argument, variable or property of the currently executing activity to add it to the Watch panel and monitor its execution throughout the debugging process.

The Arguments, Properties, and Variables categories can be compressed or expanded. The same is available for complex objects, which are displayed in a tabular way.

![9819386-locals=GUID-BB904A4F-F619-47F9-8A09-4F41287FBDB1=1=en=Default](/images/9819386-locals=GUID-BB904A4F-F619-47F9-8A09-4F41287FBDB1=1=en=Default.gif)

Property values are limited to a certain size. If a variable generates a large output, the value is truncated both in the Locals panel and in the Immediate panel.

When debugging is paused:

* You can modify the properties of the current activity and the values of variables and arguments by hovering over their Value field, clicking the  button next to them, and then making edits in the Local Value window. The edits made in the Local Value window are not saved in the file. After debugging is finished, the old values are still present in the Designer.
* You can inspect the values of other items in the Locals panel in detail by hovering over the Value field and clicking the  button to open the Local Value window.

Upon clicking the Copy to Clipboard option, the information is copied to the clipboard.

Changing the values of variables or arguments from the Variables
            or Arguments panel or the Data Manager is not supported during debugging.

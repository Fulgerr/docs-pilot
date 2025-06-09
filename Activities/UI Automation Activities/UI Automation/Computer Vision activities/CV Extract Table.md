# CV Extract Table

UiPath.CV.Activities.CvExtractDataTableWithDescriptor

# 

Extracts a table that is visible on the screen and stores it into a
                    DataTable variable.

# 

|

# 

Common

* ContinueOnError - Specifies if the automation should continue even when the activity throws an error. This field only supports Boolean values (True, False). The default value is False. As a result, if the field is blank and an error is thrown, the execution of the project stops. If the value is set to True, the execution of the project continues regardless of any error.If this activity is included in Try Catch and the value of the ContinueOnError property is True, no error is caught when the project is executed.
* DelayAfter - Delay time (in milliseconds) after executing the activity.
* DelayBefore - Delay time (in milliseconds) before the activity begins performing any operations.
* DisplayName - The display name of the activity.

Input

* Descriptor - The on-screen coordinates of the Target and each Anchor that is used, if any. These values are stored in a CvDescriptor proprietary object. Once the Indicate On Screen feature is used at runtime, the CvDescriptor is automatically generated in this field and has the following structure:"Target: Image (14,61,105,54) OffsetPoint: (-10,-75)" + "Anchor: Text 'Anchor1' (41,36,19,9)" + "Anchor: Text 'Anchor2' (75,36,37,9)" +
* TimeoutMS - Specifies the amount of time (in milliseconds) to wait for the activity to run before an error is thrown. The default value is 30000 milliseconds (30 seconds).

Misc

* Private - If selected, the values of variables and arguments are no longer logged at Verbose level.

Options

* AddHeaders - If selected, the first row of the table is added as a column header. If cleared, the table is created with generic header names. By default, this check box is selected.
* IgnoreEmptyRows - If selected, empty rows are automatically deleted from the final table. By default, this check box is cleared.
* RefreshBefore - If selected, a Computer Vision screen analysis is carried out to make sure that any changes in the user interface since the last CV Screen Scope or Refresh activities are captured. By default, this check box is selected.

Output

* Result - The retrieved table, stored in a DataTable variable. This field supports only DataTable variables.

Reusable Region

* OutputRegion - Saves the target of this activity as a Rectangle variable. This enables you to pass the same target from one activity to another. Especially useful at design time, as it makes performing multiple actions on the same UI element easier.

Scroll

You can work with information stored in scrollable elements, such as lists, by selecting
                        Refresh with Delay during the indication process and then scrolling
                    up or down to reveal the elements you want to interact with.The properties in this section are only taken into account if you have scrolled in this method while indicating.

* Content Scroll Offset - Scroll Offset used in scrolling to extract the content.
* DelayScreenshotAfterScroll - Defines the amount of time, in milliseconds, that the robot waits after scrolling and before refreshing the screen. Useful for automating applications or pages with dynamically loading UI elements.
* NumberOfScrolls - The number of scrolls that are performed between each screenshot at run-time, while searching for the target element.
* ScrollableTable - Specifies whether you want to extract a scrollable table. The activity automatically scrolls down and detects the end of the table. The maximum height limit for scrolling is 30000 pixels. An exception is thrown when trying to extract data from scrollable tables over the this value. The limit can be overridden by editing the CV Extract Table activity in your project's .xaml and adding a new property, MaxTableScrollHeightInPixels="{value}", where {value} is the desired height limit. By default, this property is set to False.
* ScrollDirection - Specifies in which direction the scroll is performed at runtime, while searching for the target element. It can be Up, Down or None, depending on the direction we detected while indicating. If ScrollDirection is None, no scrolling is performed at run-time.

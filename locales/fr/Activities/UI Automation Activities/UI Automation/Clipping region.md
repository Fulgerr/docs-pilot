# Clipping region

A clipping region refers to a specific area on the screen that is defined and used for UI
            automation. It can be used for image-based automation, but it is not limited to it. For
            example, you can use a Click activity to indicate a UI element and operate on a
            sub-region of the element, for instance, clicking BottomRight of the smaller/larger
            clipping region.

The default clipping region is the entire UI element that you indicated. However, it can
            be manipulated and reduced to a smaller region to improve speed and efficiency.

# Setting up a clipping region

The ClippingRegion property in classic UI Automation activities is nested under the
                    Target property, and it can be used to establish smaller/larger region of
                the UI element found at runtime using the Target's Selector property or
                provided directly via the Target's Element property.

To do so, you need to enter values for all coordinates, (Left, Top, Right, Bottom), and manipulate the clipping region directly.

# Limitations

There are some differences between visual debug feedback and actual robot actions. Let's take the classic Click activity as an example.

For a clipping region of (-10,-10, 0, 0), configuring the activity with CursorPosition set on BottomRight results in the click action taking place at the element’s origin (0,0).



For a clipping region of (0, 0, -10, -10), the result is similar to the first one because of internal code sorting / switching the lowest numbers on the X and Y axis.



For a clipping region of (10, 10, -10, -10), the click action takes place exactly (10,10) away from the element’s origin (0,0). The same sorting of clipping region values on X and separately on Y axis results in an internal clipping region (-10, -10, 10, 10).



Basically, although first two coordinates X, Y should be relative to TopLeft, while the last two coordinates should appear be relative to the element’s BottomRight. However, this is not accurate, and all four coordinates are relative to the element’s TopLeft.

Moreover, due to internal code sorting values on the X and Y axis, a configuration such as (0, 0, -10, -10) yields the same result as a (-10, -10, 0, 0) configuration.

# Setting up a clipping region by passing a rectangle object

You can set up a clipping region by using the classic Set Clipping Region activity.

To do so, you need to set the Direction property on RECTANGLE and enter under Region property the coordinates following this format: UiPath.Core.Region(New Rectangle(X,Y,Width,Height)).

# Setting up a clipping region by using Find Element or Find Image

The clipping region can be set to cover only the element or image that is found by using the Find Image or Find Element activities.

The position of the element or image is identified, and the region can be then manipulated using the TRANSLATE property of the Set Clipping Region activity.

# End Event

End Events mark the end of a process or a path. When used with Split or Merge activities, an End Event completes the path to which it is attached, and connects the path back to Merge. If all Split paths end with a End Event, the execution terminates instantly.

A Long Running Workflow can contain multiple End Events. If a node in the workflow lacks outgoing connectors, it is equivalent to an End Event.



# Properties

Display nameThe name of the End Event point as you want it to be displayed on the Long Running Workflow canvas.

# Link properties

LabelThe description that is displayed on the canvas element of the link.

# Managing the End Event

To configure an End Event in your process, select the End Event and attach it to the desired path in your canvas.

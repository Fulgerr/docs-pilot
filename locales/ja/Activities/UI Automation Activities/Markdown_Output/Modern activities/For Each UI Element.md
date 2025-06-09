# For Each UI Element

UiPath.UIAutomationNext.Activities.NForEachUiElement

# 

Iterates through a list of UI elements and performs one or multiple actions on each of them.







# 

|

# 



* Click Indicate in App/Browser to indicate the UI element to use as target using the For each UI element wizard. You can find out more about how to use this activity and its wizard here.Edit configuration - Open the For each UI element wizard to configure the target.Configure new target - Indicate the target again.To filter the items you extracted with your selection, select Configure filter.





* 
* 
* 
* 
* 



* 
* Target (Next Button) - The next UI Element that you want to perform actions on. Before indicating on screen the target you want to use, this field is set to (null). Once the target is indicated, all properties regarding the element that was indicated are displayed. Except for Click offset, the children properties of this field are identical to the ones specific to the Target property.



* 
* 



* 



* Delay between pages - The amount of time (in seconds) to wait until the next page is loaded if the data spans multiple pages.
* This is the default selection.This option is selected by default if you change the default setting for any of the following properties ClickType, MouseButton, or KeyModifiers.
* Limit extraction to - The type of limit you want to apply when extracting data. The following options are available:Max UI elements - Specifies the maximum number of UI elements you want to extract. The default value is 1000. No limit - Extracts all elements that can be found, without any limit. Max pages - Specifies the maximum number of pages you want to extract UI elements from, when extracting data from tables that span multiple pages.
* Number of items - The maximum number of results that you want to extract. If the value is 0, all of the identified items are extracted.

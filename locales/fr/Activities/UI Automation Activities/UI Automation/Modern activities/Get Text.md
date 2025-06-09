# Get Text

UiPath.UIAutomationNext.Activities.NGetText

# 

Extracts and copies the text from a UI element.







# 

|  |

# 



* Preview extraction - Opens the Get Text - Extraction preview wizard, which enables you to see what text is retrieved from the target in real-time.
* Save to - Enables you to store the text from the specified UI element in a variable. Variables created in this field are of String type.

Extraction preview

The Get Text - Extraction preview wizard enables you to choose what scraping
                method you want to use and also displays in real time the text that is displayed by
                using the chosen method. The extracted text is displayed in the Extraction
                    preview text box, and can be copied by using the Copy to Clipboard
                button.

If the wizard is not used, all scraping methods are tried by default and the best one
                is chosen automatically. Choosing a scraping method in the Extraction preview
                window overrides this mechanism and makes that method the only one that is used.

The following methods are available:

* Default
* Text attribute
* Fulltext - This method offers the option to Ignore hidden text, which can be activated by selecting its respective check box.
* Native - This method enables you to Allow formatting and retrieve the screen coordinates of the words by selecting the check boxes for each of these features.

After selecting the method you want to use for scraping, hitting Save &
                    close closes the wizard and propagates the changes you have made in the
                Properties Panel of the activity.





* 
* 
* 
* 
* You can also choose a predetermined value from the drop-down menu: 10 (s), 20 (s) or 30 (s).



* 
* If a selected check box is targeted by this activity, the returned text is checked. If an image is targeted by this activity, the alt text of the image is returned.



* 
* 



* 



* Text - See Save to in the Designer panel.
* Words info - The additional information of the retrieved text, such as screen coordinates, are saved in the variable supplied in this field. This field supports only NWordInfo variables.

# 

* 
* 





* 
* 
* 
* 



* 



* Text value - Enables you to store the text from the specified UI element in a variable. Variables created in this field are of String type.
* Words info - The additional information of the retrieved text, such as screen coordinates, are saved in the variable supplied in this field. This field supports only NWordInfo variables.
* 
*

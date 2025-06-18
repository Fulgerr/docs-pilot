# Set Browser Data

UiPath.UIAutomationNext.Activities.NSetBrowserData

# 

Imports the browser session data into a specified browser instance.



This activity paired with the Get Browser Data
                activity makes the use of the Picture-in-Picture (PiP) feature
                easier as it allows you to export the cookies from a specific browser profile and
                import them into the one where the automation runs.

This activity cannot be used with
                    Chrome or Edge when the User Sync functionality is enabled. This means that a user
                    logged into a browser instance is considered logged in in any other instance until
                    logged out.

A user must log in to the web
                business application using multi-factor authentication (e.g. Salesforce). The robot
                must continue the automation execution in PiP to avoid interfering with the user’s
                work. To avoid a re-login in the PiP browser instance, the Get Browser Data
                activity is used to export the session data from the Windows main session browser
                instance, post login, while the Set Browser Data activity is further used to
                import the session data into the child PiP browser session.

# 

|

# 



* Session Data - The variable where the session data is stored. This field supports only String variables.





* 
* 
* 
* 



* Browser - The target browser you want to import session data into. This field supports only Browser objects.
* Session Data - See Session Data in the Designer panel.



*

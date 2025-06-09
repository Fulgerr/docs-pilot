# Support for Salesforce Lightning Interface

When automating the Salesforce Lighting interface, the out-of-the-box generated selectors contain specific Lightning attributes that are stable and will not change over time, thus making them very reliable and resilient to UI changes. This means the UI Automation activity package is a great choice for automating this environment. The attributes are sfl-path, sfl-name and sfl-type.

Any UiPath.UIAutomation.Activities package can be used to automate Salesforce Classic and Lightning UI interfaces through the generic UiPath browser automation support.UiPath.UIAutomation.Activities v21.10 or above is required to create automation projects for Salesforce Lightning interface by using the specific attributes described below.

# Using sfl-path

Most elements in Salesforce Lightning can be identified by using the sfl-path attribute. You can find several examples below:

A selector identifying a search input field; the selector contains the sfl-path attribute determining the precise path of the element:

![2c72450-image-20211007-094030=GUID-1B2DDCA1-92A4-42DB-AF62-10E33119B635=1=en=Default](/images/2c72450-image-20211007-094030=GUID-1B2DDCA1-92A4-42DB-AF62-10E33119B635=1=en=Default.png)

A selector identifying an icon:

![579a29d-image-20211007-094619=GUID-0F02FECF-D23B-4983-923A-65DEB43C39FD=1=en=Default](/images/579a29d-image-20211007-094619=GUID-0F02FECF-D23B-4983-923A-65DEB43C39FD=1=en=Default.png)

# Using sfl-name and sfl-type

In some cases, however, the sfl-path attribute might not be enough to precisely identify the element you are trying to automate. In these cases, the sfl-name and sfl-type attributes are exposed in UIExplorer and can be included in the selector as needed:

![69e498d-image-20211007-100621=GUID-BF555BC9-77CB-4F22-8CF8-62ABA54E9960=1=en=Default](/images/69e498d-image-20211007-100621=GUID-BF555BC9-77CB-4F22-8CF8-62ABA54E9960=1=en=Default.png)

# Using Standard HTML Attributes

If the Salesforce Lightning specific attributes are not required and standard HTML attributes are enough for uniquely identifying an element on a page, the selector is generated with the standard <html> strategy and may look like this:

![1adf6d1-image-20211007-093700=GUID-D2C758C9-5395-4682-AFFE-6919E422624E=1=en=Default](/images/1adf6d1-image-20211007-093700=GUID-D2C758C9-5395-4682-AFFE-6919E422624E=1=en=Default.png)

# Relative Scraping

Relative Scraping is a technique that enables you to retrieve text from UI elements by using OCR technology. In situations where selectors cannot be found, the target UI objects are identified by using image recognition activities to look for adjacent labels or other elements.

This technique is useful in retrieving text from certain UI elements that are difficult to access by using normal means, such as applications in virtual environments. Using visual labels of UI elements makes up for the inability to find selectors.

To use the Scrape Relative functionality, do the following:

1. Start the Citrix Recording Wizard .
2. Click Screen Scraping > Scrape Relative.
3. Select an anchor, which is the relative element used to identify the location of the target, such as the label of a text field. An Attach Window container is generated that sets focus to the app window and contains a Find Image activity that locates the position of the anchor on the screen.
4. Indicate the area where the target element is. A Set Clipping Region activity is generated, which translates the clipping region to where the target element can be found, relative to the anchor. Additionally, a Get OCR Text activity is generated that scrapes the target element. Since the clipping region is a shared resource, the recorder generates another Set Clipping Region activity which resets the clipping region, thus avoiding interference with other operations.

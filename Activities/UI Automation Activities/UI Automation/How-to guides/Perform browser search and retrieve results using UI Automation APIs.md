# Perform browser search and retrieve results using UI Automation APIs

This tutorial illustrates how to use UI Automation APIs to create an automation that opens the
            Google search engine, performs a UiPath search, retrieves the result from the
            official UiPath website, and displays it in the console.

# Prerequisites

* UiPath Studio 2023.10 or higher
* UiPath.UIAutomation.Activities 23.10.3 or higher
* Visit Using objects in coded automations and learn the methods you can employ for using object repository elements within your coded automation.

# Steps

1. Create a coded workflow by selecting New, and then Coded Workflow from the File group.
2. Capture all the UI elements that you want to use in your coded workflow inside the Object Repository.For this example you need to capture the following UI elements:GoogleHomeScreen - the Google home screen, where you perform the search.googleSearchBar - the Google search bar where you type the UiPath keyword.googleResultsScreen - the screen that shows the first Google results after performing the search.firstPageOfResults - the part of the screen that includes only the first results.uipathOfficialWebsite - the result that takes you to the UiPath official website.
3. Create a variable for the Google home screen and open it using the API.public class Search : CodedWorkflow { [Workflow] public void Execute() { // 1. Open Google var homeScreen = uiAutomation.Open(ObjectRepository.Descriptors.Google.GoogleHomeScreen);
4. Type UiPath in the Google search bar, using the API.// 2. Type "UiPath" in the Google search bar homeScreen.TypeInto(ObjectRepository.Descriptors.Google.GoogleHomeScreen.googleSearchBar, "UiPath");
5. Send the Enter keyboard shortcut to search for the corresponding result, using the API.// 3. Send the "Enter" keyboard shortcut to search for the corresponding Google results homeScreen.KeyboardShortcut(ObjectRepository.Descriptors.Google.GoogleHomeScreen.googleSearchBar, "[d(hk)][k(enter)][u(hk)]");
6. Focus on the screen with the Google results, using the API.You use the Attach API over the Open API when you need to target a specific screen within an application that has already been opened using the Open API. The Attach API prevents unnecessary application launches, ensuring your automation stays on track.var googleScreen = uiAutomation.Attach(ObjectRepository.Descriptors.Google.googleResultsScreen);
7. Get the text from the first Google results and print it out in the console, using the API.string firstresultsText = googleScreen.GetText(ObjectRepository.Descriptors.Google.googleResultsScreen.firstPageOfResults); Console.WriteLine(firstresultsText);
8. Create an If clause that prints out the the text of the first result that contains the "https://www.uipath.com" string within it.// Initialize with an empty string string officialWebsiteUiPath = ""; if (firstresultsText.Contains("https://www.uipath.com")) { officialWebsiteUiPath = googleScreen.GetText(ObjectRepository.Descriptors.Google.googleResultsScreen.uipathOfficialWebsite); } Console.WriteLine(officialWebsiteUiPath);

# Results

The automation opens the Google search engine in your preferred web browser, performs
                a search for UiPath, retrieves the results from the initial page, and
                extracts the text from the result that contains the following link:
                    https://uipath.com.

# Sample project

To follow the steps of this tutorial and try it out yourself, you can download the
                following sample project: Goggle Results using UI Automation
                APIs.

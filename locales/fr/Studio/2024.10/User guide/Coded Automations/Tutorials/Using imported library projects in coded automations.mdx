# Using imported library projects in coded automations

This tutorial shows you how to use objects from imported library projects within coded
            automations. The example demonstrates how to use Object Repository elements and
            workflows from an imported library project. The given scenario involves automating the
            Acme website, to fill in a student score card and add it to the database.

# Prerequisites

* Install UIAutomation Activities version 23.10.13 or higher.We recommend you to use the latest minor version corresponding to the major version that you are working with. For example, if you are using the 23.10 major version of activity packages, we recommend you to upgrade them to the latest minor version available (23.10.x).
* Publish the Acme library sample and install it in the project where you are working.

# 1. Create the library project

Create a library project to store the essential UI elements for automating the Acme
                App, specifically for filling a student score card. Additionally, create a low-code
                    (.xaml) or coded workflow (.cs) within the
                library project, that you will later use within another coded automation.

1. Create a library project named AcmeLibrary.
2. Capture all the UI elements that you want to use inside the Object Repository, and Descriptors section.
3. Create a new Coded Workflow, from the File group.This step is crucial to enable access to the Object Repository within a coded automation when importing the library in another project.
4. Rename the Main low-code workflow to Send message box, and add a Message box activity, with the following text: "You've added a new score card for a student in Acme."You can recreate the Message Box activity as a coded workflow, as well, by following the steps outlined in the tutorial.
5. Save and publish the library project to a feed.You will install and use this published library in another project within a coded automation.

# 2. Create the coded automation

After you create the library project, install it into another project to leverage its
                reusable assets, including Object Repository elements and workflows, whether they
                are low-code (.xaml) or coded (.cs).When using UI Automation coded automation APIs,
                    remember that the overloads with IScreenDescriptor or
                        IElementDescriptor are intended to work with Object
                    Repository elements, while the overloads with
                        TargetAnchorableModel are meant for use with native
                    selectors obtained through the UI Explorer. Visit UI Automation coded automation APIs to
                    learn how to leverage selectors with UI Automation coded automation
                APIs.

1. From the File group, create a new Coded Workflow.
2. Go to Manage Packages and install the library project you previously created.
3. From the File group, create a new Workflow.Name the workflow notifyStudentScoreCardAdded.Navigate to the Activities panel, to the Installed section.Search for the name of the library project you imported (for this example, AcmeLibrary).Drag and drop the Send message box activity inside notifyStudentScoreCardAdded.Now the notifyStudentScoreCardAdded has the same behavior as the Send message box workflow from the imported library project.
4. To enhance readability, you can define your imported Object Repository application as a variable applying a using statement at the beginning of your workflow. Here is an example: using app = <ProjectName>.ObjectRepository.Descriptors.With this approach, you can easily call descriptors in the following format: app.<AppName>.<ScreenName>.<UiElementName>For this example, we define the Acme Object Repository like the following:namespace UsingImportedLibraryProjects { using AcmeApp = AcmeLibrary.ObjectRepository.Descriptors;
5. Now you can automate the given scenario within Acme. Start by opening the Acme login screen using the Open coded automation API. [Workflow] public void Execute() { // 1.Open the Acme app on the Login screen var AcmeLoginScreen = uiAutomation.Open(AcmeApp.Acme.LoginScreen);
6. Type in the necessary credentials for logging into Acme, using the TypeInto coded automation API. // 2.Type in the necessary credentials AcmeLoginScreen.TypeInto(AcmeApp.Acme.LoginScreen.Email, "john.doe2023@uipath.com"); AcmeLoginScreen.TypeInto(AcmeApp.Acme.LoginScreen.Password, "12345678");
7. Use the Click coded automation API, along with a native selector, to click the Login button.// 3.Use a native selector to click the Login button AcmeLoginScreen.Click(Target.FromSelector("<webctrl tag='BUTTON' type='submit'/>"));
8. The login process takes you to the Dashboard screen in the Acme web application. Therefore, use the Attach coded automation API to focus on the new screen.// 4. Focus on the Dashboard screen var DashboardScreen = uiAutomation.Attach(AcmeApp.Acme.Dashboard);
9. Select the Students entry on the website, using the Click coded automation API.// 5. Click the Students entry DashboardScreen.Click(AcmeApp.Acme.Dashboard.Students);
10. Select Score card to open the Students - Score Card form, using the Click coded automation API.// 6. Click Score card, to start filling in a student score card DashboardScreen.Click(AcmeApp.Acme.Dashboard.Students.ScoreCard);
11. Focus on the Students - Score Card screen, using the Attach coded automation API.// 7. Focus on the Score Card screen where you fill in the necessary information var ScoreCardScreen = uiAutomation.Attach(AcmeApp.Acme.StudentsScoreCard);
12. Fill in half of the fields in the Students - Score Card form using the TypeInto coded automation API, and elements from the Object Repository.ScoreCardScreen.TypeInto(AcmeApp.StudentsScoreCard.StudentEmail, "john.doe@uipath.com"); ScoreCardScreen.TypeInto(AcmeApp.Acme.StudentsScoreCard.FirstName, "John"); ScoreCardScreen.TypeInto(AcmeApp.Acme.StudentsScoreCard.LastName, "Doe"); ScoreCardScreen.TypeInto(AcmeApp.Acme.StudentsScoreCard.ParentEmail, "johnny.doe@uipath.com"); ScoreCardScreen.TypeInto(AcmeApp.Acme.StudentsScoreCard.Tuition, "Private");
13. Fill in the rest of the fields in the form using the TypeInto coded automation API in combination with native selectors that you discover through the UI Explorer.ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='mathematics' tag='INPUT' />"), "A"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='physics' tag='INPUT' />"), "B"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='biology' tag='INPUT' />"), "C"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='chemistry' tag='INPUT' />"), "A"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='geography' tag='INPUT' />"), "C"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='history' tag='INPUT' />"), "A"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='english' tag='INPUT' />"), "A"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='computer Science' tag='INPUT' />"), "C"); ScoreCardScreen.TypeInto(Target.FromSelector("<webctrl id='professorComments' tag='INPUT' />"), "The student is doing okay, very hardworking and does its best");
14. Select Add score card details using the Click coded automation API.// 10. Click the "Add score card details" button using an Object Repository descriptor ScoreCardScreen.Click(AcmeApp.Acme.StudentsScoreCard.AddScoreCardDetailsButton);
15. Invoke the workflow you imported from the library project using the RunWorkflow() method. Provide the method with the path of the workflow inside the project.// 11. Invoke imported workflow from library RunWorkflow("notifyStudentScoreCardAdded.xaml");
16. Close the browser tabs you opened to automate the scenario, using the Dispose() coded automation API.// 12. Close the applications/browsers you opened, to finish he automation ScoreCardScreen.Dispose();

# Sample project

To follow the steps and try out the tutorial yourself, see the following sample
                project: Using imported library projects in coded
                    automations. The file contains the library project, as well.

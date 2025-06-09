# Working with manual test cases

Once you've established a connection with a Test Manager instance and Studio project, you
            can navigate to the Test Explorer panel. First, you can transform manual tests
            within the associated project into low-code or coded test cases. Second, you can create
            coded test cases using our AI features powered by AutopilotTM. If needed, you can review these manual tests in Test Manager
            by double-clicking on the test case in the Test Explorer panel before automating
            them.

### Generating test cases using AI

You can generate fully automated test cases using Generative AI powered by AutopilotTM.

# Generating coded test cases using AI

Before you begin, visit AI-powered test automation best practices
                to ensure you effectively generate the coded test cases.

Prerequisites:Connect Studio to a Test Manager
                        project.Create elements in the Object
                        repository that mirror the UI elements from the manual tests.Autopilot uses object repository elements to
                            automate UI elements in test steps. The elements are employed in the
                            APIs as IElementDescriptors.

You can generate coded test cases either from the Studio IDE or from the Test
                Explorer panel.

To generate a coded test case from the Studio IDE, you can create a new coded test
                case, and employ Autopilot to generate code for it. Visit  for more
                information about ways to generate code.

To generate the coded test case from the Test Explorer panel, follow these steps:

1. In the Test Explorer panel, select Manual Test Cases to display the manual test cases that you can convert into automations.
2. Right-click a manual test case and select Generate Coded Test Case with Autopilot.The result will be a coded test case that uses UiPath APIs to generate the code for automating the entire manual test. The manual steps are displayed as comments at the beginning of the test case.

![generate_coded_test_case_using_AI=GUID-0CD72019-2D23-4B74-A100-6734F8F0887D=1=en=Default](/images/generate_coded_test_case_using_AI=GUID-0CD72019-2D23-4B74-A100-6734F8F0887D=1=en=Default.png)

# Generating low-code test cases using AI

Before you begin, visit AI-powered test automation best practices
                to ensure you effectively generate the low-code test cases.

Prerequisites:Connect Studio to a Test Manager project.Create elements in the Object repository that mirror the UI elements from
                        the manual tests.Autopilot uses object
                            repository elements to automate UI elements in test steps.

You can generate low-code test cases either from the Designer panel or from the Test
                Explorer panel.

To generate low-code test cases from the Test Explorer panel, follow these steps:

1. In the Test Explorer panel, select Manual Test Cases to display the manual test cases that you can convert into automations.
2. Right-click a manual test case and select Generate Test Case with Autopilot.The result will be a low-code test case that uses activities to generate the automation for the entire manual test.

To generate low-code test cases from the Designer panel, follow these steps:

1. Open your blank low-code test case and select generate with Autopilot from the Designer Panel.A Type annotation text field appears, which allows to input your instructions.
2. Enter the necessary test steps, then select Generate to trigger the generation of your test case.If desired, you can save the instructions, and return to them later. Select Save if you want to save the instructions.You can use these steps for creating activities in Do blocks or within the bodies of other activities.Typing the instructions for Autopilot in the Type annotation text fieldTyping the instructions for Autopilot in the Type annotation text field

To generate a single activity, follow these steps:

1. Select Add Activity or use the shortcut Ctrl + Shift + T to open the Studio search bar.
2. In the Studio search bar, enter your instructions.
3. Select Generate with Autopilot, at the end of the search bar list.This command allows you to use natural language to generate automation steps, including test steps, based on your input.


### Creating a coded test case from a manual test
        case

You can create a coded test case from a manual test, resulting in Studio generating a coded test
            case named after the manual test.

Prerequisites:

* Connect to Test Manager: In the Studio header, click
                            Test Manager.Click Test Manager Settings.Input the base URL of your Test Manager instance and click
                        Connect.Under Default Project,
                        select the project in which you want to work. This project should include
                        the manual tests you wish to work with.

# Steps

1. Open the Test Explorer panel.
2. Right-click a manual test case from the list of test cases in your default project.
3. Click Create Coded Test Case.Result: A new coded test case is automatically created, having the same name as the manual test. This coded test case displays the manual steps as comments.


### Creating a low-code test case from a manual test case

You can generate a low-code test case from a manual test with the manual steps displayed
            as Comment activities.

# Steps

1. Connect Studio to a Test Manager project.
2. In the Test Explorer panel, select Manual Test Cases to show the manual test cases that you can convert into low-code test cases.
3. Right-click a manual test case and select Create Test Case.The result is a low-code test case that places the manual steps as Comment activities within the XAML file.

![generate_low_code_test_case_from_manual_test=GUID-1177E42F-AC56-43BC-8E3E-1F3AF4F92E71=1=en=Default](/images/generate_low_code_test_case_from_manual_test=GUID-1177E42F-AC56-43BC-8E3E-1F3AF4F92E71=1=en=Default.png)


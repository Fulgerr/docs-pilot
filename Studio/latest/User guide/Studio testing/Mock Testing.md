# Mock Testing

# Overview

Use mock testing on your activities to isolate and focus on specific test case functions.

![a048d45-mock_sequence=GUID-163E3EA4-8DC3-4F52-8787-2FBFC23BE893=1=en=Default](/images/a048d45-mock_sequence=GUID-163E3EA4-8DC3-4F52-8787-2FBFC23BE893=1=en=Default.png)

# Prerequisites

* Create a Process project type.You can't use the mock feature in Test Automation projects.
* Install the Testing Activities Package

# Working With Mocks

You can create a mock file of your workflow by selecting Mock workflow under test in the
                    Create Test Case window. This creates
                a copy of your workflow with the name workflowName_mock and stores
                it in Project > Mocks. This folder mirrors the source workflow file
                tree structure. For example, if your workflow is stored in the Project tab as
                    production\Tests\testFolder01\testCase07.xaml, the
                correspondent mock file is stored as
                    production\Mocks\Tests\testFolder01\testCase07_mock.xaml .

In a practical scenario, you have an application that writes directly in a database but you want it to write on the screen. You can use Surround with mock to test this specific function, without having to make any changes to your main test case. As a general note, consider using mocks for tests that have permanent effects in production or require special resources.

# Mock Testing Conditions

* Within mock files, you can only edit the mocked activities.
* You can have multiple mock files for a workflow.
* Nested mocks are unavailable as you cannot use Surround with Mock on existing mock activities.
* The mock.json file contains configuration settings for mock files.
* In a Given-When-Then test case structure, Surround with mock is only available for activities within When.
* Changes made in the source workflow file are applied to the mock file when you Save your project. Alternatively, you can manually sync your mock files. For more information, see Mock Testing Actions.
* Synchronization does not work if the mock file is open with changes to be saved.
* Deleting a workflow associated with a mock file prompts you to choose whether you want to remove both files.
* The activity coverage indicator only takes into account the activities included in the source workflow, thus, not calculating any coverage of your mock activities.

# Mock Testing Actions

The following table lists the actions that you can take for your mock testing.

ActionDescriptionProcedureCreate mock workflowCreate a copy of your main workflow for mock testing.Open Studio and navigate to your project.Right-click on your project and select Create Test Case.Configure your test case and select Mock workflow under test.If you have an existing mock file that you want to use, you can select it from the Mock dropdown.A copy of your workflow is created in Projects > Mocks.Remove mock activityRemove the mock that surrounds your activityOpen Studio and navigate to your project.
Go to Project > Mocks an open a mock.Right click on a mock activity and select Remove mock activity.Surround activity with mockInsert a mock activity.Open Studio and navigate to your project.
Go to Project > Mocks an open a mock.Right click on an activity and select Surround with Mock from the dropdown.Synchronize mockSync your mock files or folders with the source workflow file or folders, respectively.Open Studio and navigate to your project.
Go to Project > Mocks.Right click on a file or folder and select Synchronize Mock from the dropdown.

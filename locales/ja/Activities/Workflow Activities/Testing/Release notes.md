# Release notes


## V25.4.0

Release date: April 23, 2025

# Breaking change

We have renamed the Verify Documents Equivalence and Verify Text
                    Equivalence activities to Compare
                    Documents and Compare Text. We also renamed
                        VerifyDocumentsEquivalence and
                        VerifyTextEquivalence coded automation APIs to CompareDocuments, and CompareText. If your automation includes the former activity or coded
                automation API, this update will disrupt their functionality.

To solve this, you need to manually replace the old activities with the renamed
                versions, or reimplement the coded automation APIs with their new names.

# What's new

We have enhanced our text and PDF verification activities and coded automation APIs.
                You now have the option to leverage the AI capabilities of AutopilotTM,
                marked as a Interpret differences with Autopilot result type, for performing
                equivalence checks between two documents or texts.

This approach offers a semantic approach in detecting differences, especially when
                comparing complex documents. For more information on how to use verification with
                Autopilot when comparing texts or documents, visit the following:Activities: Compare DocumentsCompare TextCoded automation APIs:
                            CompareDocumentsCompareText

# Improvements

* We have renamed the Include Images/IncludeImages parameter, from the Compare PDF Documents activity and coded automation API, to Include Widgets/IncludeWidgets. This change also allows you to include URLs, in addition to images.
* We have renamed the Ignore Images Location/IgnoreImagesLocation parameter, from the Compare PDF Documents activity and coded automation API, to Ignore Widgets Location/IgnoreWigdetsLocation. This change also allows you to ignore the position of URLs, in addition to images.
* When configuring the Baseline Path and Target Path properties of the Compare PDF Documents activity, you can now use the Choose a file option to directly select a file from your machine.

# Bug fixes

We have resolved an issue that previously prevented taking screenshots using Verify
                activities on MacOS and Linux. Now, only when testing Chrome web applications, this
                capability is available if your project also has installed a UIAutomation.Activities
                version higher than 24.10.6.


## V24.10.4

Release date: January 29, 2025

# Bug fixes

When using the VerifyExpressionWithOperator coded automation API,
                any value assigned to the alternativeVerificationTitle parameter
                did not reflect in Orchestrator.


## V24.10.3

Release date: October 21, 2024

# What's new

Comparing the equivalence of PDF files and texts

We are excited to announce the ability to effortlessly compare PDF files and various
                text pieces using designated comparison types and rules. You can choose to compare
                documents and texts based on lines, characters, or words. Additionally, you have the
                option to establish custom rules, employing either regular expressions or wildcard
                syntax, for the purpose of excluding specific content segments from the comparison
                process.

To increase flexibility in your automation projects, the ability to compare documents
                and texts is available for both low-code and coded automations. Refer to the
                following resources to understand how to use Testing activities and coded automation
                APIs in comparing documents and texts:

* Low-code:
* Coded:


## V24.10.1

Release date: 18 July 2024

# Bug fixes

* Fixed the behavior of the ContinueOnFailure parameter, which erroneously triggered an error during coded workflow execution.
* The values of takeScreenshotInCaseOfFailingAssertion and takeScreenshotInCaseOfSucceedingAssertion parameters were previously ignored when using the Verify coded automation APIs.
* The Testing configurations made in the Studio Project Settings were not applied in the context of coded automations.


## V24.10.0

Release date: 1 July 2024

# Erratum

Added 2 July 2024: Fixed the behavior of the Get Test Data Queue Item
                activity which did not return more than 1000 queue items.

# What's new

New Verify coded automation APIs

To help you automate more of your testing process, we've added new coded automation
                APIs for verifying your testing scenarios. Check the following table showing the new
                coded automation APIs that you can use:

Coded automation APIDescriptionVerifies if two expressions are equal.Verifies if two expressions are not equal.Verifies if the first expression contains the second
                                expression.Verifies that the first expression is greater than the second
                                expression.Verifies that the first expression is greater than or equal to
                                the second expression.Verifies that the first expression is less than the second
                                expression.Verifies that the first expression is less than or equal to the
                                second expression.Verifies if the first expression is a regex match to the second
                                expression.

New or updated overloads for the existent Verify coded automation APIs

To simplify your testing efforts, we have added new overloads for the
                    VerifyExpression, VerifyExpressionWithOperator, and
                    VerifyRange coded automation APIs. The following table displays the coded
                automation API and their new or updated overloads.

APIOverloadVerifyExpression(bool,     string)VerifyExpressionWithOperator(object, Comparison,
                                            object, string)VerifyExpressionWithOperator(object, Comparison,
                                            object)string, bool, string, bool,
                                            bool)VerifyRange(object,VerificationType, object,
                                            string)VerifyRange(object,VerificationType, object,
                                            object,string, bool, string, bool,
                                            bool)


## V23.10.1

Release date: 2 February 2024

# Bug fixes

Fixed an error that occurred when editing a read-only file for test
                                auto-generation. The solution was to add a Finally block in
                                the Test with Timeout template.


## V23.10.0

Release date: 23 October 2023

# New features

Testing coded automation APIs

If you prefer to code when building automations, you can now achieve this
                                using coded automations and UiPath services! You can create coded
                                automations using the UiPath services such as Testing.Activities,
                                offering you coded automation APIs to use in your automation
                                projects.

Visit the Testing coded automation APIs section
                                to browse through the available coded automation APIs, and Coded Automations
                                        Introduction to learn how to create coded
                                automations.


## V23.4.1

Release date: 30 May 2023

# Improvements

Introduced enhancements to offer a more powerful user experience.


## V22.10.4

Release date: 30 May 2023

# What's New

The Testing.Activities user interface is now available in Traditional
                Chinese.

# Improvements

Introduced enhancements to offer a more powerful user experience.


## V23.4.0

Release Date: 7 April 2023

# Improvements

The Get Test Data Queue Item activity now
            returns as null, when the queue is empty, as opposed to throwing an exception.


## V22.10.3

Release Date: 19 December 2022

# Bug fixes

After you migrated your projects from Windows - Legacy to Windows, you couldn’t interact with the following activities:

* Verify Expression with Operator
* Verify Expression
* Verify Range.


## V22.10.2

Release Date: 6 December 2022

# Bug fixes

The Output field inside the Random Date activity was non-interactive for Windows and cross-platform projects.


## V22.10.1

Release Date: 5 December 2022

# New features

The Testing activities user interface is now available in Traditional Chinese.

# Bug fixes

* Because of a character limitation, assertions generated by the OutputMessageFormat field would return as incomplete. Now assertions return as expected.
* You can now use the mocking features again inside Cross-platform projects.


## V22.10.0

Release Date: 24 October 2022

Updated internal dependencies to match the newest version of UIAutomation.


## V22.8.2

Release Date: 26 August 2022

# Improvements

You can now use the  Verify Range activity to test expressions in a given range, so you can have more control over attributes in your testing worflows.


## V22.7.0

Release Date: 8 July 2022

# Improvements

* Testing Activities are now included in every project type by default to bring testing capabilities into view.
* Redesigned the Add Test Data Queue Item activity to support fields with user-defined names.
* Added Delete Test Data Queue Items activity so you can remove test data queues through Studio workflows.
* Added Get Test Data Queue Items activity so you can get specific test data queue items.
* Added the option to mark queue items as Consumed for the Get Test Data Queue Item activity.


## V22.4.3

Release Date: 31 May 2022

# Bug Fixes

Fixed an issue in which verification activities failed when testing long running workflows. This issue was caused by a failed refresh token request.


## V22.4.2

Release Date: 9 May 2022

# Bug Fixes

* A workflow configured to make an API call resulted in error in the production environment due to a versioning issue of the Newtonsoft.Json dependency. This issue affected version 2021.4 and older versions of Studio and Robot.
* SAP Session Trigger error messages were not localized.
* Executing a test case containing a Verify Expression activity in Cloud Orchestrator failed.
* Adding and then removing activities such as Element Exists or Find Element within a Verify Control Attribute resulted in validation errors.


## V1.4.6

Release Date: 17 January 2022

# Bug Fixes

Opening a Robotic Enterprise Framework template in Studio version 2021.10.4 resulted in an error. This issue occurred in scenarios where all online feeds were disabled and the installation package folder was deleted.


## V1.4.5

Release Date: 10 December 2021

# Bug Fixes

Resolved a regression with Verification activities throwing an exception when executed in an Orchestrator RPA Process.


## V1.4.4

Release Date: 7 December 2021

# Bug Fixes

An issue affected workflows with mocked activities. Removing a connection between a starting node and an activity that was surrounded with Mock, then establishing a connection to a new activity caused the Mock file to be discarded.


## V1.4.3

Release Date: 27 October 2021

# Improvements

* A Tag property has been added to the Attach Document activity to mark files that have been attached to test executions.
* The Testing Activities now support cross-platform projects.
* .NET 5 support is now enabled for this activity package as part of our overall upgrade to this framework.

# Bug Fixes

Running a workflow containing attached documents while connected to Orchestrator, threw an exception error. This issue has been addressed by skipping the activity at Studio runtime.


## V1.3.3

Release Date: 4 May 2021

# Bug Fixes

A difference in the library version of a dependency shared by the Testing and WebApi packages resulted in HTTP Request errors. This issue has been addressed by removing the library from the Testing package.


## V1.3.2

Release Date: 26 April 2021

# Workflow Analyzer

New Rules

The following Application Testing Workflow Analyzer
                        Rules are available so you can maintain the same level of
                automation for projects that have multiple stakeholders:

* Test Case Name Not Unique Within Project (TA-NMG-001) - Check whether a test case is unique or not, regardless of its location folder or subfolder.
* Test Case Naming Convention Broken (TA-NMG-002) - Check for test cases that match a specific RegEx.
* Missing Verifications Within the Test Case (TA-DBP-001) - Check for a defined minimum and maximum number of verifications for your test cases.
* Untested Workflows (TA-DBP-002) - Check for workflows that do not have at least one assigned test case.
* Test Manager Connected (TA-DBP-003) - Check for RPA test cases that are not linked to a test case in Test Manager.
* Unused Mocking (TA-DBP-004) - Check if the mock workflows have at least one mock activity.
* Test Case Without Annotations (TA-DBP-005) - Check for RPA test cases without a single annotation.
* Test Case/Workflow Too Complex (TA-DBP-006 - Check for test case and workflow files that exceed a specified number of steps (activities).
* Test Case Includes Too Many Branches (TA-DBP-007) - Checks if a test case is using any If statements.

# Test Data Activities

* Now you can attach documents to your test execution results for a verifiable outcome, as part of your audit trail. For more information, see Attach Document.

# Verification Activities

The Verify Expression, Verify Control Attribute and Verify Expression with Operator
                activities have new properties that add additional capabilities:

* You can configure the format of your output message.
* You can set an alternative name for your verification activities to show up in Orchestrator.
* Create reports or notify stakeholders if the verification activity has failed.


## V1.2.5

Release Date: 5 March 2021

# Bug Fixes

An issue affected assertion posting to Orchestrator (v2020.4). If the Robot did not have permission to upload the assertion the workflow continued to run without returning an error.


## V1.2.4

Release Date: 13 October 2020

# New Features and Improvements

You can now create synthetic test data to support your testing efforts. For example, this comes in handy when production data cannot be used for testing purposes, due to data regulations such as GDPR. Creating your artificial data provides high coverage and is easy to reproduce, as opposed to copying or anonymizing existing production data.

To learn how to create synthetic test data, see the following new activities:

* Add Test Data Queue Item
* Address
* Given Name
* Get Test Data Queue Item
* Last Name
* Random Date
* Random Number
* Random String
* Random Value


## V1.0.0

Release Date: 6 May 2020

# New Features and Improvements

The first iteration of the Testing activities pack offers three activities designed to enable verification of logical expressions and control attributes in your testing workflows. The new activities are:

* Verify Control Attribute
* Verify Expression
* Verify Expression with Operator


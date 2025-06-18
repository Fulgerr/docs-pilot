# About the testCases.json file

testCases.json is a file automatically generated when packaging as a
            NUPKG a project of type Process, that contains test cases. The file contains
            metadata regarding your RPA testing project.

In the NUPKG file of the project, you can find the testCases.json file
            in the .tmh directory.

The parameters contained in the testCases.json file are described in the
            following table:


| Parameter | Description |
| --- ---| PackageName | Name of the package. |
| PackageVersion | Version of the package. |
| ProjectId | Unique identifier of the project. |
| RpaPackageName | Name of the RPA package created. |
| RpaPackageVersion | Version of the RPA package. |
| TestCases | Array that lists the test cases for the given process. For each test                             case, the following information is included:AutomationId: Unique identifier for the                                     automation.RpaPackageEntryPoints: This is an array listing                                     entry points for the RPA package, including the ID and workflow                                     name.TestCaseName: The name of the test case. |
| Type | Type of project, which is always Process. |
| Workflows | Array that lists the workflows related to the test cases, including                             the ID for the entry point, the name, and the type of workflow. |

# Example

The following is an example of the contents of a testCases.json file
                included in a project packaged from Studio.

{
    "PackageName": "Testsuite_Tests",
    "PackageVersion": "1.0.162152358",
    "ProjectId": "<projectid>",
    "RpaPackageName": "Testsuite",
    "RpaPackageVersion": "1.0.162145743",
    "TestCases": [
        {
            "AutomationId": "<id>",
            "RpaPackageEntryPoints": [
                {
                    "Id": "<id>",
                    "WorkflowName": "Main.xaml"
                }
            ],
            "RpaWorkflows": [
            ],
            "TestCaseName": "TestCase.xaml"
        }
    ],
    "Type": "Process",
    "Workflows": [
        {
            "EntryPointId": "<entrypointid>",
            "Name": "Main.xaml",
            "Type": "EntryPoint"
        }
    ]
}

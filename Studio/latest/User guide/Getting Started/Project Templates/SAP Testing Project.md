# SAP Testing Project

The functionality of this project template has
            been replaced by the Enable SAP monitoring Studio project setting. For
            information on how to collect SAP data for use in automated tests in Studio, necessary
            for the Heatmap and Change Impact Analysis, visit Working with Heatmap.

# Overview

The SAP Testing Project Template is a project template based on an execution template. Through this
                template you can understand the usage of SAP transactions and SAP programs during
                the test case execution, as part of Change Impact Analysis. Through SAP Monitoring,
                information about executions of SAP transactions and programs, and associated
                dependencies is collected at runtime.

Find SAP Testing Project Template in the
                        marketplace

# How it works

Any new or current test case can be assigned to the execution template called
                    SAP Change Impact Mining.xaml

Now the test case runs in parallel with SAP Session Attributes Change
                        Trigger to track and log any change in the SAP sessions
                attribute (e.g. SAP transaction information).

By default, monitoring is set for SAP Transactions and SAP Programs. You can define
                which SAP session attributes you are interested in.

For information on all available SAP session attribute, see SAP Session Information.

![da5a85c-SAPTestingProject_-_UiPath_Studio=GUID-D0D4E7B7-F4BB-4BFF-81DB-9D651074A97E=1=en=Default](/images/da5a85c-SAPTestingProject_-_UiPath_Studio=GUID-D0D4E7B7-F4BB-4BFF-81DB-9D651074A97E=1=en=Default.png)

The data collected at runtime is then sent to Orchestrator as a test execution
                attachment.

![9fe9354-Execution_Details_-_Orchestrator=GUID-FDD0C42B-9D8C-4637-8AF5-BFD5853E29A8=1=en=Default](/images/9fe9354-Execution_Details_-_Orchestrator=GUID-FDD0C42B-9D8C-4637-8AF5-BFD5853E29A8=1=en=Default.png)

For more information, see Analyze test
                    executions.

In Test Manager, this information is applied to test
                        cases as labels.

![5d4cfe4-UiPath_Test_Manager_Labels=GUID-627596AF-DD62-4262-940C-59DD0868D2CF=1=en=Default](/images/5d4cfe4-UiPath_Test_Manager_Labels=GUID-627596AF-DD62-4262-940C-59DD0868D2CF=1=en=Default.png)

You can use this information to filter test cases by SAP labels, and then create a
                test set that will execute the affected test cases.

Understand the potential
                effects that a proposed change can have on a SAP system using Change Impact Analysis.

# Dependencies

* Studio version 2021.10.1
* Testing Activities v1.4.3
* System Activities
* UIAutomation Activities

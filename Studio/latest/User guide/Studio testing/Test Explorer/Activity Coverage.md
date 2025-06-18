# Activity Coverage

# Overview

You can use the workflow activity coverage panel to check whether your test cases have been covered or not and look for redundancies. The test execution results are shown in Test Explorer, in the Activity Coverage panel.  The coverage calculations are done by the Robot.

# Analyzing activity coverage results

You can analyze the workflow's activity coverage, debug newly created test case, and view covered and uncovered activities. To support your workflow debugging, you can see the traversed path, by going to Test Explorer, opening the Activity Coverage panel and double-clicking the test case. You can see the path highlighted in green and any skipped activities in red. Additionally, you can quickly identify whether a test case has passed  or failed  and view the result.

![18941f4-activity_coverage_sample_video=GUID-CA5729F7-2F04-4846-9DC6-17E692198468=1=en=Default](/images/18941f4-activity_coverage_sample_video=GUID-CA5729F7-2F04-4846-9DC6-17E692198468=1=en=Default.gif)

### Activity Coverage Scenarios

# Partial coverage rate

Consider the partial coverage rate of the following workflow that automates a loan management process.

![5eae6c8-activity_coverage_example=GUID-BA962C8E-8EFC-4022-8FBD-A43EEAD03A66=1=en=Default](/images/5eae6c8-activity_coverage_example=GUID-BA962C8E-8EFC-4022-8FBD-A43EEAD03A66=1=en=Default.png)

In this high-volume short-term loan scenario, the activity coverage result shows that 53% of the workflow activities were covered during execution. This flowchart uses a Flow Switch activity. You can create another test case to follow the execution of different scenario, for low-volume loans. Therefore, depending on your automation needs, you can create separate test cases to cover each scenario during the execution.

# Full coverage rate

The following full coverage rate scenario tests all activities, for automating the UiBank
                    app for applying for a loan. This workflow uses an XLSX  file to import
                test data as part of data-driven testing using Test Data
                    File.

![full_coverage_rate_scenario_test_data_overview=GUID-FBE293B6-01C1-42BC-BCF0-9AA6CFAB25A4=1=en=Default](/images/full_coverage_rate_scenario_test_data_overview=GUID-FBE293B6-01C1-42BC-BCF0-9AA6CFAB25A4=1=en=Default.png)

The activity coverage results show a 100% coverage rate, meaning that the data set used in the test case, together with the added activities went through all possible scenarios.

![example_of_full_activity_coverage=GUID-9200DD6E-2AC4-4D66-8C02-2C33F3E7D2F9=1=en=Default](/images/example_of_full_activity_coverage=GUID-9200DD6E-2AC4-4D66-8C02-2C33F3E7D2F9=1=en=Default.png)


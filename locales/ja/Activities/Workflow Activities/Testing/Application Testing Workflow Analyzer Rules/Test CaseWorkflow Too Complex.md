# Test Case/Workflow Too Complex

Rule ID: TA-DBP-006

Scope: Workflow

# Description

This rule checks for test case and workflow files that exceed a specified number of steps (activities). The default number of steps is set to 30.

If the rule is executed within a process, only the test cases are checked against the specified number of steps.

# Recommendation

Aim for short and concise test cases by setting a maximum number of steps (activities).

# Configure Rule

1. In the Design ribbon, navigate to Analyze File > Workflow Analyzer Settings.
2. Go to Workflow Analyzer to view the rules.
3. Select Test Case/Workflow Too Complex and configure the default action.
4. Set a Maximum Activity Count value.
5. Click OK to save changes.

# Reset to Default Value

To reset the rule to the default configuration, right-click it and select Reset to default. This will reset the "Maximum Activity Count" to 30.

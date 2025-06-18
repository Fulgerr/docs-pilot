# Missing Verifications Within the Test Case

Rule ID: TA-DBP-001

Scope: Workflow

# Description

This rule checks for a defined number (minimum/maximum) of verifications for the test cases. Verifications within the test cases and invoked workflows are considered for this rule only when the test cases have been Set as Publishable (see Publish test cases).

# Recommendation

Set a minimum and a maximum number of verifications. Having too many could, for example, be an indication of an excessive number of steps within a test case.

# Configure Rule

1. In the Design ribbon, navigate to Analyze File > Workflow Analyzer Settings.
2. Go to Workflow Analyzer to view the rules.
3. Select Missing Verifications Within the Test Case and configure the default action.
4. Set a minimum and a maximum value for the number of verifications.
5. Click OK to save changes.

# Reset to Default Value

To reset the rule to the default configuration, right-click it and select Reset to default. This clears the minimum and maximum values.

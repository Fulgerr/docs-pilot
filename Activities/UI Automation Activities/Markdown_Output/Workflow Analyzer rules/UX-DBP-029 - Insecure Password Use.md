# UX-DBP-029 - Insecure Password Use

Rule ID:UX-DBP-029

Scope: Activity

Default action: Warning

This rule applies only to activities that are part of the Modern UI Automation
            experience.

# Description

Checks if any Type Into activity is used to type passwords as plain strings in your workflow.

# Recommendation

For security purposes, passwords should not be stored directly in your project. They should be stored externally, retrieved using an appropriate activity and passed in as a variable.

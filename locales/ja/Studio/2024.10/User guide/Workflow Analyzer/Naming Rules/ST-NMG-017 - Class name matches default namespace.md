# ST-NMG-017 - Class name matches default namespace

Rule ID: ST-NMG-017

Scope: Workflow

# Description

This rule verifies that a class name is distinct from the default namespace. The
                default namespace is auto-generated based on the project name.

If you attempt to name a class identically to the default namespace, an error will
                occur and be displayed. To fix this error you need to rename the class so that it no
                longer matches the default namespace. For example, having a project named "My
                Project Name" will generate a default namespace named "MyProjectName". Therefore,
                creating a class named "MyProjectName" within this namespace will trigger the
                    ST-NMG-017 error.

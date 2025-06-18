# ST-NMG-001 - Variables Naming Convention

Rule ID: ST-NMG-001

Scope: Activity

# Description

Variables in a project should follow a specific naming convention to make it easier to understand the purpose of the variable and to maintain it. The variable name should be meaningful to accurately describe its usage throughout the project.

This rule analyzes all variables in the project and determines whether they follow the specific convention. If not, a message is logged in the Error List panel.

# Recommendation

Make sure all the variables follow the naming convention. The rule checks that variable names abide by this default Regex expression ^(dt_)?([A-Z]|[a-z])+([0-9])*$.

According to the above Regex expression, the variable name abides by the rule if it starts with a lower or upper case letter which can be preceded by the prefix dt_ recommended for DataTable variables, followed by a lower or upper case letter, and then one or more numbers.

For example, if the variable name in the workflow is HelloWorld1 then it matches the default Regex expression set in this rule.

# Modifying the Rule

In the Project Settings window, select the Workflow Analyzer tab. Find the rule and select the rule, as in the image below:

![396648a-2becd1f-var=GUID-EC7371C1-B807-4587-B61F-B1758195CF82=1=en=Default](/images/396648a-2becd1f-var=GUID-EC7371C1-B807-4587-B61F-B1758195CF82=1=en=Default.png)

In the Regex section, add or remove characters from the search pattern. For example, if we remove the [A-Z] part of the expression, the search pattern becomes ^(dt_)?([a-z])+([0-9])*$. Now the rule checks if variables start with a lower case letter and are followed by a number.

If we add [a-z]|[A-Z]), then the rule becomes ^(dt_)?([A-Z]|[a-z]+[a-z]|[A-Z])+([0-9])*$, and recognizes HelloWonderfulWorld as a valid variable name.

# Examples of Regex Expressions

The default regex expression for this rule can be changed to another naming convention. Check the list below:

Camel Case

The camel case convention specifies that each word in the middle of the variable name begins with a capital letter, with no intervening spaces or punctuation.

Example of Regex expression: ^(dt_)?([A-Z]|[a-z])+([A-Z]|[a-z]|[0-9]).

Valid variable names: Hello1World2, helloWorld, Hello1World.

Pascal Case

The Pascal case naming convention specifies that the variable name must contain concatenated capitalized words.

Example of Regex expression: ^(dt_)?([A-Z])+([A-Z]|[a-z]|[0-9]).

Valid names: Hello1World2, HelloWorld, Hello1World.

# Reset to Default Values

The default value for ST-NMG-001 Regex is ^(dt_)?([A-Z]|[a-z])+([0-9])*$.

Some Workflow Analyzer rules have default values. To reset these values to default, right-click a rule in the Project Settings window, and then click Reset to default.

![be62c7c-NMG_001_DEFAULT=GUID-D59BAC94-255D-4862-9F0F-5BF1BBD1B501=1=en=Default](/images/be62c7c-NMG_001_DEFAULT=GUID-D59BAC94-255D-4862-9F0F-5BF1BBD1B501=1=en=Default.png)

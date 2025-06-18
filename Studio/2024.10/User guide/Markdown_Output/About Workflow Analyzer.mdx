# About Workflow Analyzer

Workflow Analyzer is a static code analyzer that ensures your project meets high quality and reliability standards. A static code analyzer checks for inconsistencies without actually executing the project, as opposed to dynamic analyzers which step in during execution.

Workflow Analyzer uses a set of rules to check for various inconsistencies unrelated to project execution. The rules are based on Automation Best Practices and take into consideration variable and argument naming, empty sequences or workflows, package restrictions, and so on. The analyzer does not identify errors in execution or compilation.

![WorkflowAnalyzer_AnalyzeFile=GUID-B66A1D17-391D-4EEF-B9D2-5519C588CD6E=1=en=Default](/images/WorkflowAnalyzer_AnalyzeFile=GUID-B66A1D17-391D-4EEF-B9D2-5519C588CD6E=1=en=Default.png)

It is available in the Design ribbon tab, the Analyze File and Analyze Project buttons. The first performs an analysis on the file currently focused in the Designer panel, while the second analyzes all files in the automation project.

Studio comes with a set of built-in rules, identifiable by the ST- prefix. The UIAutomation.Activities, Excel.Activities, Testing Activities, and Mail.Activities also have their own rules, identifiable by the prefix. Find more in the table below:


| Rule Category | Description | Source |
| --- --- ---| Naming | Checks the file or project for any inconsistencies related to naming. | Studio |
| Design | Ensures your project meets a general set of best practices. | Studio |
| Project Anatomy | Ensures your project meets general requirements in terms of anatomy. | Studio |
| Maintainability and Readability | Confirms projects are easy to understand so that maintainability is ensured. | Studio |
| Usage | Ensures elements defined in your project are actually used. | Studio |
| Performance and Reusability | Checks the file or project for any inconsistencies related to performance and reusability. | Studio |
| Reliability | Checks the file or project for any inconsistencies related to reliability. | Studio |
| Security | Checks the file or project for any inconsistencies related to security. | Studio |
| Application Testing | Tests the workflows and automation projects. | Activities |
| UI Automation Activities | Validates workflows that consume either Classic or Modern UI Automation activities. | Activities |
| Excel Activities | Validates workflows that consume Excel Activities. | Activities |
| Mail Activities | Validates workflows that consume Mail Activities. | Activities |

You can also create custom rules. For more information, see Building Workflow Analyzer Rules in the Developer guide.

Rules can also be configured when creating a Studio policy in Automation Ops. For more information, see the Automation Ops guide.

Studio built-in rules cannot be ported to older Studio versions. However, rules from compatible activities packages can be used in older Studio versions that come with the Workflow Analyzer.

# Rules Naming Convention

Each rule has an ID, name, description, and recommendation. The ID contains the origin, category, and number. For example, Variables Naming Convention has the ST-NMG-001 ID:

* ST - reveals that the rule is built into Studio.
* NMG - shows that the rule is part of the Naming Rules category. Rules part of Project Anatomy Rules category have the ANA abbreviation, those part of Design Best Practices the DBP, and so on.
* 001 - is the rule number.

# Scope

Each rule has a scope to which it applies:

* Activity: The rules are enforced at activity level, checking variables, arguments, properties. Variables Naming Convention is one such rule.
* Workflow: Rules perform checks in a single project file, for example Unused Variables.
* Project: Checks are performed at project level.

# Action

Rules have a number of actions that can be set:

* Error: Generates an error in the Error List panel.
* Warning: Generates a warning in the Error List panel.
* Info: Generates a message in the Error List panel.
* Verbose: Creates large log files.

Check the Logging Levels page to learn more about logging with Studio.

# Managing Rules

The project or file is analyzed based on a set of rules available in the Project Settings window:

* In the Project panel, click the icon, then select Workflow Analyzer.
* In the ribbon, click the Analyze File button, then select Workflow Analyzer Settings from the dropdown.

By default, rules are arranged by code in the window, and enabled rules are displayed first.

Use the search box at the top of the window to search rules by name or code. To filter rules by scope and default action, click the  button to the right of the search box.

![415de69-workflow_analyzer=GUID-2D0427D3-09BA-4593-93D1-AAE5C4CF85D2=1=en=Default](/images/415de69-workflow_analyzer=GUID-2D0427D3-09BA-4593-93D1-AAE5C4CF85D2=1=en=Default.png)

Configure Rules

You can enable/disable a rule using the checkbox on its left, or change the default action using the dropdown on its right.

Some rules require no additional configuration, while others contain parameters that you can configure, such as thresholds not to be exceeded, or lists of specific items that are allowed or prohibited. Please note that when you configure rules that contain text fields (for example SecureString Misusage or Package Restrictions), text shouldn't be entered between quotes.

Reset to Default

After any changes were made to the default values of rules, be it Regex or thresholds, the values may be reverted to default by right-clicking the rule and then selecting Reset to Default.

![00936e2-workflow_analyzer_reset=GUID-551E0512-3E60-4963-B75F-4CEB57BD68FF=1=en=Default](/images/00936e2-workflow_analyzer_reset=GUID-551E0512-3E60-4963-B75F-4CEB57BD68FF=1=en=Default.png)

# Validation

Validation of the file or project is performed whenever the Workflow Analyzer is triggered. Validation options are available in the Analyze File ribbon button, Validate File and Validate Project.

This action checks whether variables, arguments, expressions, and imports are properly configured. The Validate File action can be triggered using the F8 shortcut, while Validate Project using Shift + F8. Validation can be cancelled at any time.

The file(s) that contain errors are marked in the Project panel with a red dot, and the errors are shown in the Error List and Output panels.

Double-clicking an item in the Error List panel opens the .xaml and highlights the element which threw the error, whether it's an activity, argument, or variable.

Unless all .xaml files are validated, the project cannot be debugged, executed or published. Breakpoint conditions are not evaluated.

# Managing Errors

When triggered, the Workflow Analyzer uses the configured ruleset to check the project or file, and logs the found errors in the Error List panel, in accordance with the rule action.

![58ce5fb-wfanalyzer=GUID-63FA298E-1EA3-4765-BF7C-B0D69331A187=1=en=Default](/images/58ce5fb-wfanalyzer=GUID-63FA298E-1EA3-4765-BF7C-B0D69331A187=1=en=Default.gif)

The Error List panel filters items by Errors, Warnings and Messages. The scope drop-down menu is useful for filtering errors by project, current file or a specific file in the automation. In addition, items can be filtered by rule ID.

![b663fed-zz=GUID-2E6C2274-AD74-487B-ADF3-681FC0B120EE=1=en=Default](/images/b663fed-zz=GUID-2E6C2274-AD74-487B-ADF3-681FC0B120EE=1=en=Default.png)

Click a found warning or error to display the rule’s recommendation and a link to the documentation page for each rule.

In addition to rule violations, the Error List panel also displays errors that may occur in the execution of workflow analysis, When the Workflow Analyzer or one of the configured rules fails to run, an error is logged with details about the cause of the error in the description.

# Command-Line Support

The UiPath.Studio.CommandLine.exe command-line user interface contains a set of parameters for checking files or projects against certain rules, even in CI/CD pipeline configurations.

UiPath.Studio.CommandLine.exe is available in the installation folder:

* For per-machine installations, the default path is %ProgramFiles%\UiPath\Studio\
* For per-user installations, the default path is %LocalAppData%\Programs\UiPath\Studio

UiPath.Studio.CommandLine.exe does
                                                  not require a Studio license.Configure
                                                  Rules

By default, all Workflow Analyzer rules are enabled when installing Studio with the exception of the following:

* Argument Default Values
* Undefined Output Properties

You can configure rules:

* From the Workflow Analyzer Settings window, enable or disable rules by clicking the checkbox next to each one of them,
* From the RuleConfig.json file, path %LocalAppData%\UiPath\Rules. Find a specific rule, modify its parameter, change the IsEnabled parameter to false to disable the rule. Optionally, if the path is not accessible, you can place the RuleConfig.json file in a custom location and include the path to the file in the command. For more information, see Analyze Files and Projects.

Rules are organized according to their unique ID, visible in the Workflow Analyzer Settings also.

For example, in the image below only the Variables Naming Convention rule was enabled and received the ([A-Z]) Regex expression. This means that variable names must be uppercase. All the other rules were disabled in this example.

![RegexExpression=GUID-253CDA80-E7EA-46B3-A26A-1B4766616BAE=1=en=Default](/images/RegexExpression=GUID-253CDA80-E7EA-46B3-A26A-1B4766616BAE=1=en=Default.png)

The following parameters are available for each rule:ParameterDescriptionRuleIdThe ID of the rule.IsEnabledWhether the rule is enabled or disabled. If set to null, the value of the parameter DefaultIsEnabled is applied.DefaultIsEnabledWhether the rule is enabled or disabled by default.DefaultErrorLevelThe default level of the log message (Error, Warning, Info, Verbose).ParametersAdditional parameters that the rule can contain (for example, Name or Value).ErrorLevelThe level of the log message. If set to null, the value of the parameter DefaultErrorLevel is applied.

Analyze Files and Projects

After configuring the rules, access the UiPath.Studio.CommandLine.exe command-line user interface.

The following Workflow Analyzer commands are available:

* analyze - Analyzes the whole project. Requires the path to the project.json file.
* analyze-file - Analyzes a single file. Requires the path to the .xaml file.

The following arguments are available for Workflow Analyzer commands:

ArgumentDescription-p, --project-pathFor analyzing one file, provide the path to the .xaml. For analyzing the entire project, specify the path to the project.json file.-c, --config-pathPath to the RuleConfig.json file. Specify this path only if the rule configuration file is not placed in the default location (%LocalAppData%\UiPath\Rules).--helpView the arguments available for each command.--versionCheck the version of UiPath.Studio.CommandLine.exe.

For example, the command UiPath.Studio.CommandLine.exe analyze-file -p "C:\BlankProcess\Main.xaml" analyzes only one file in a project, Main.xaml. The output of the command returns a json-encoded dictionary with the following information for each rule violation:

* FilePath: The path to the analyzed file.
* ErrorCode : The rule ID.
* ActivityDisplayName: The display name of the activity (null if not applicable).
* Item - The name and type of the item (for example, activity or variable) where the error message was generated.
* ErrorSeverity: The value of the DefaultAction parameter, which is the configured log message for each rule, either Warning, Error, Info or Verbose.
* Description: The rule's description.
* Recommendation and URL: The recommended changes for solving the issue, together with the documentation link with more information.

To use a RuleConfig.json file placed in a custom location, add the location to the command. Using the previous command as an example, to configure rules with the file located at C:\CustomFolder\RuleConfig.json, run the command as follows: UiPath.Studio.CommandLine.exe analyze-file -c "C:\CustomFolder\RuleConfig.json" -p "C:\BlankProcess\Main.xaml".

To return the exit code of the command, execute echo %errorlevel% after you run it. If there are no messages with the ErrorSeverity Error, the code 0 is returned. Otherwise, 1 is returned.

Please note that some of the entries may not be associated with a rule, but can be errors generated by the Workflow Analyzer. For example, in the case of an empty .xaml file, an error is displayed.

The Globally Unique Identifiers (GUID) used as prefixes for an entry are generated on each run and apply to the current result only.

# Exporting Workflow Analyzer Results

To configure Studio to export the results of each workflow analysis to the project folder, go to Studio Backstage View > Settings > Design and enable the Export Analyzer results option.

When this option is enabled, the results of each workflow analysis are saved in the \.local\.analysis\ subfolder of the project folder in a file named with the timestamp of the analysis followed either by project_analysis_results.json (when the Analyze Project option is used) or file_analysis_results.json (when the Analyze File option is used) .

The .local folder is hidden. You can enable viewing hidden items from the Windows File Explorer settings.

The files contain the following information about each enabled rule:

* RuleId - The rule ID.
* RuleName - The name of the rule.
* Parameters - The customizable parameters in the rule, if applicable.
* Severity - The rule action, if the rule is violated.
* ErrorsDescription - A list of error messages generated by the rule, if applicable.

# Enforcing the Workflow Analyzer before Run, Publish, or Push/Check in

You can prevent executing, publishing, and pushing/checking in to remote repositories projects that contain Workflow Analyzer errors by enabling the following options from Studio Backstage View > Settings > Design:

* Enforce Analyzer before Run - Whenever running/debugging a file or project is initiated, the Workflow Analyzer checks all the rules with the Error action and execution is allowed only if no errors are found.
* Enforce Analyzer before Publish - Whenever publishing is initiated, the Workflow Analyzer checks all enabled rules regardless of their action and publishing is allowed only if there are no rule violations with the action Error.
* Enforce Analyzer before Push/Check-in - Whenever sending a project to a remote repository is initiated (Commit and Push for GIT, Check in for SVN and TFS), the Workflow Analyzer checks all enabled rules regardless of their action and the operation is allowed only if there are no rule violations with the action Error.

When Enforce Analyzer before Publish is enabled, if publishing is successful (there are no rule violations with the action Error) the results of the workflow analysis are included in the published .nupkg package in the file project_analysis_results.json located in \lib\net45\.analysis\. The file contains the following information about each enabled rule:

* RuleId - The rule ID.
* RuleName - The name of the rule.
* Parameters - The customizable parameters in the rule, if applicable.
* Severity - The rule action (if the rule is violated).
* ErrorsDescription - A list of error messages generated by the rule, if applicable.

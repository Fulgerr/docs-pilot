# Workflow From a Template

Use workflow templates as base models for other workflows. You can use built-in templates (e.g. Sequences, Global Exception Handler, create custom templates, or use templates from libraries installed in your projects.

Conditions:

* The templates are specific to the project type and language.
* File templates cannot be converted to workflows, compiled, or published.
* You can create templates that are based on other templates.

## Template Sources

When you add a new workflow to a project, you can choose a template on which to base it. The templates that you can choose from vary depending on the type of file you are adding (workflow or test case), whether you've installed libraries that contain file templates, and whether you've previously added templates to your project Templates folder.

# Built-in file templates

Sequence

The Sequence template is useful if you want to design a workflow with sequential activities that act as a single block. This template is available only for workflows.

Flowchart

Use the Flowchart template to design workflows with multiple branches. This template is available only for workflows.

State machine

Use the State machine template to design workflows with activities that get triggered based on specified states. This template is available only for workflows.

# Local file templates

Local templates are created in the Templates folder of the project when you extract a file as template and when you add a template to the Templates folder. Local file templates are available inside the project where you create them. Local templates added in a library project will be available in projects where the library is installed as a dependency.

You can create local templates of three types: execution template, workflow template, and test case template. When you extract a file as a template, the template type is applied automatically based on the type of file you extract (workflow or test case). When you manually add a template to the Templates folder, you select the type of template to create.

# Package file templates

Package file templates are file templates that are included in libraries or activity packages that are installed as dependencies in a project.

When you create a workflow, you can find workflow templates from installed libraries under Package file templates in the Template dropdown.

![231ed6f-template_extracted_from_library=GUID-065707DE-3FB9-4476-84A0-D96F343B0BD5=1=en=Default](/images/231ed6f-template_extracted_from_library=GUID-065707DE-3FB9-4476-84A0-D96F343B0BD5=1=en=Default.jpg)


## Adding a Local File Template

You can use the contextual menu in the Project panel to manually add workflow, execution, and test case templates based on other templates to your project. After you add a template, you can edit it in the Designer, and then use it as a starting point for creating other files.

![7e252be-add_templates=GUID-83DB9EF5-4DA6-4643-89CA-610ADAE36B4A=1=en=Default](/images/7e252be-add_templates=GUID-83DB9EF5-4DA6-4643-89CA-610ADAE36B4A=1=en=Default.png)

To add a workflow template, right-click the Templates folder, and then select Add > Workflow Template. You can then select a template on which to base the new template.

![3ebfcf5-add_template=GUID-A42A7010-BDC9-4417-8FB3-11C543C95FC7=1=en=Default](/images/3ebfcf5-add_template=GUID-A42A7010-BDC9-4417-8FB3-11C543C95FC7=1=en=Default.png)

# Extracting a file as a template

If you want to make an existing workflow available as a template for future files, extract it as a template.

In the Project panel, right-click a workflow, and then select Extract as Template.

![6103353-extract_as_template=GUID-99862E83-DF16-4554-BD38-EDC1F7CEE23B=1=en=Default](/images/6103353-extract_as_template=GUID-99862E83-DF16-4554-BD38-EDC1F7CEE23B=1=en=Default.png)

The extracted file is added to the Templates folder. The following image shows a workflow template created from a sequence and two test case templates.

![c4563c8-templates_folder=GUID-49A12631-518D-457F-9671-3EFCE9C443DE=1=en=Default](/images/c4563c8-templates_folder=GUID-49A12631-518D-457F-9671-3EFCE9C443DE=1=en=Default.png)

# Workflow templates in libraries

You can create workflow templates in libraries the same way you create them in processes. After you publish the library, the templates marked as public are available as package file templates in projects where the library is installed.


## Creating a Workflow From a Template

1. Create a blank process.
2. Build whatever workflow you would like to use as a template. For this example, the sample workflow creates a form where respondents give their full name and age, and then prints out the age that the respondent completed in the form.
3. When you finish building the workflow, right-click it, and select Extract as Template. Name the template, choose the Templates folder as the location to store it in, and select Create. For this example, the name of the template is MyFirstLocalTemplate.
4. Go to the Design tab, in the File group, select New > Workflow . The New Workflow window is displayed.
5. Give it an appropriate name and choose the location as the Templates folder, and select the template that you previously created from the Template dropdown list. For this example, choose MyFirstLocalTemplate.

Example: Check out the sample XAML project below.

Download example

# Removing a template

To remove a template, expand the Templates folder in the Project panel, right-click the template, and then select Delete.


## Related Articles

* Extract a project as library
* Execution Templates
* Test Case Templates


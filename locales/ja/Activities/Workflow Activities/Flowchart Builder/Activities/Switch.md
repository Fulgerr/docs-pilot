# Switch

Switch activities enable you to execute a single course of action out of multiple cases, based on a specified expression. The activity consists of an expression to be evaluated and a collection of cases, each containing a corresponding activity or set of activities. Based on the expression set, routes execution to the branch that matches the result.

Switch activities are recommended for processes requiring multiple possible outcomes, such as routing support tickets by category, or processing orders by priority.

The Switch activity corresponds to the Exclusive Gateway element in BPMN.



# Properties

Display nameThe name of the Switch point as you want it to be displayed on the Long Running Workflow canvas.ExpressionWrite the expression for the condition that must be evaluated before continuing the execution of the process. For example, in a process of approving a loan, a condition expression could be "IF age>18 AND salary>50,000". If the condition is met, the loan would be approved. Else, the loan would be rejected.TypeArgumentThe data type for the value of the switch output.

# Link properties

These properties refer to the graphical link between the Switch activity and the associated activities. There are two types of links:

* Default link, which determines the step that must execute when the condition is not met.
* Case link, which determines the step that must execute when a specific output of the condition is met.For instance:Case 1: If the order value is greater than $500, route to "High Value Order".Case 2: If the order value is less than $50, route to "Low Value Order".Default: If the order value is between $50 and $500 and no specific condition matches, the process follows the default path, such as routing to a "Standard Order" process.

Select the link to see their properties in the Properties panel.

DefaultCaseDisplayNameThe name of the default link as you want it to be displayed on the Long Running Workflow canvas.CaseThe order in the evaluation logic of the selected operation.IsDefaultCaseIf selected, marks the selected operation as the default response to the condition, when no other responses apply.

# Managing the Switch

To configure a Switch activity in your process:

1. Drag and drop the Switch activity to your canvas.
2. In the Expression field, write the expression for the condition.
3. Add activities and link them to the Switch activity.
4. Select the canvas element of each branch and configure the logic of how responses should be evaluated:Provide a value for the Case property. This value represent the order in the evaluation logic.Check the IsDefaultCase box if you want to mark this activity as the default one, when no other responses apply.

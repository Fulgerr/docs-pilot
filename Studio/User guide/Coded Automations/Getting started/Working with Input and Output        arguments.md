# Working with Input and Output
        arguments

Learn how to efficiently handle input and output arguments
            in coded automations, including their integration when invoked in low-code
            workflows.

# Adding arguments to coded automations

When designing coded automations, you can add input, output, and In/Out arguments
                alongside the entry point Execute method. Irrespective of their
                definition order, In/Out arguments are placed at the end of the method's argument
                list.

Check out the scenarios below to understand how to add arguments to your coded
                automations.

Adding input parameters

1. To add input parameters, define them after the name of the entry point method.
2. For example, you have a coded automation that represents a loan application taking input arguments only. The needed input arguments are the customerName, loanAmount, loanRate and loanTerm. Check out the code snippet below:public void Execute (string customerName, decimal loanAmount, double loanRate, int loanTerm)

Adding output parameters

1. To add output parameters, define them before the name of the entry point method.If the method returns a single parameter, it is automatically named Output by default, and you can't rename it.
2. For example, you have a coded automation that approves or denies a loan application based on the loan rate. This automation requires an input argument for the loan rate (loanRate), and an output argument showing if the loan application was approved or denied (loanApproved). Check out the code snippet below:public bool Execute (int loanRate)
3. Let's take another example that outputs two parameters. Suppose you have a coded automation that returns the approved loan amount (LoanAmountApproved) and if the loan was approved (IsLoanApproved), based on the loan rate (LoanRate). Check out the code snippet below:public (int LoanAmountApproved, bool IsLoanApproved) Execute(int LoanRate)

Adding In/Out parameters

1. To add an argument of type In/Out, define the same argument both before and after the name of the entry point method.
2. For example, you have a coded automation that takes an initial loan amount (loanAmount) and an interest rate (interestRate) as input and then calculates the updated loan amount after applying the interest rate and returns it. Also, it returns an argument stating the type of financial need that this loan amount would require. Check out the code snippet below:public (double loanAmount, string financialNeed) Execute (double interestRate, double loanAmount)

If an input argument is named Output, it
                will be treated as an In/Out argument. Naming any argument as
                    Output treats it as an In/Out argument, even if it's only
                declared once in the method.

# Importing coded automations arguments in low-code workflows

1. Create a coded automation that takes an initial loan amount (loanAmount) and an interest rate (interestRate) as input and then calculates the updated loan amount after applying the interest rate and returns it.For this coded automation you should declare the entry point method as public double Execute (double interestRate, double loanAmount)
2. Add an Invoke Workflow File activity in a low-code automation and offer the path to the coded automation you previously created.
3. Click Import Arguments and check the imported arguments.For the coded automation offered as an example, you should have the following imported arguments:NameDirectionTypeValueloanAmountIn/OutDouble10,000interestRateInDouble5Manually add the arguments that don't appear as imported arguments.

With System.Activities 24.10 and higher, the
                arguments that you add to a coded automation are automatically imported in a
                low-code automation when you invoke them using the Invoke Workflow File
                activity.

Using nested classes as workflow arguments is not supported.
                Classes used as arguments must be directly defined within a namespace.

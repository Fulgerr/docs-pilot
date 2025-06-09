# VerifyIsLess

Verifies that the first expression is less than the second expression.

# 



# VerifyIsLess(object, object, string)

bool VerifyIsLess(
       object firstExpression,
       object secondExpression
       string outputMessageFormat = null
)

firstExpressionObjectThe first expression in the verification process.secondExpressionObjectThe second expression in the verification process.outputMessageFormatStringThe format of the output message. The supported arguments are:{LeftExpression}{LeftExpressionText}{RightExpression}{RightExpressionText}{Result}For more information, check the Configuring the
                                    outputMessageFormat section.

# Return value

Boolean

It is True if the first expression is less than the second
                expression , and False if the first expression is equal to or
                greater than the second expression.

# Configuring the
                    outputMessageFormat

The outputMessageFormat parameter can be configured with supported
                arguments, that act as placeholders for the values used in the verification
                operation. These placeholders are automatically populated with the variables or
                values defined when invoking the coded automation API at runtime.

For the VerifyIsLess coded automation API, you can implement the following supported
                arguments when creating an output message:

* {LeftExpression}: Represents the value of the first expression you provided for the firstExpression parameter.
* {LeftExpressionText}: Represents the text of the first expression you inserted for the firstExpression parameter.
* {RightExpression}: Represents the value of the second expression you provided for the secondExpression parameter.
* {RightExpressionText}: Represents the text of the second expression you inserted for the secondExpression parameter.
* {Result}: Represents the coded automation API's return value, which is the verification result.

The following is an example on how to use the VerifyIsLess coded automation API,
                which includes configuring the outputMessageFormat parameter:

// Initialize variables for the expressions to be verified
var expression1 = 4;
var expression2 = 5;

// Employ the VerifyIsLess coded automation API, with the last string parameter being the outputMessageFormat
testing.VerifyIsLess(expression1, expression2, "{LeftExpression} should be lower than {LowerLimitText}, and the result to this is {Result}");

In the provided example, the placeholders within the curly brackets are replaced with
                the corresponding variable names and their values at runtime, providing a customized
                output message.

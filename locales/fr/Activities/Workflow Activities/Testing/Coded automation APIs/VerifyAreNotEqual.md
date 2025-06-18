# VerifyAreNotEqual

Verifies if two expressions are not equal.

# 



# VerifyAreNotEqual(object, object, string)

bool VerifyAreNotEqual(
       object firstExpression,
       object secondExpression,
       string outputMessageFormat =  null
)

firstExpressionObjectThe first expression in the verification process.secondExpressionObjectThe second expression in the verification process.outputMessageFormatStringThe format of the output message. The supported arguments are:{LeftExpression}{LeftExpressionText}{RightExpression}{RightExpressionText}{Result}{Operator}For instance, you can use the following output message
                            format:"{LeftExpressionText}
    (with value {LeftExpression}) {Operator} {RightExpressionText} (with value {RightExpression})
    has result {Result}.This message format indicates
                            a comparison between two values or variables
                                (LeftExpression and
                                RightExpression), using a certain operator. The
                                {Result} represents the outcome of this
                            comparison.

# Return value

Boolean

It is True if the expressions aren't equal, and
                    False if the verifications are equal..

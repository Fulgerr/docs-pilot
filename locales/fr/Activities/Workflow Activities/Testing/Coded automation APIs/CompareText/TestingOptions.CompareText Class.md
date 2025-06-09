# TestingOptions.CompareText Class

Use this class to configure options for comparing documents with the CompareText coded automation API.

# Definition

Namespace: UiPath.Testing.API.Models

Assembly: UiPath.Testing.Activities.Api (in
                UiPath.Testing.Activities.Api.dll)

# Syntax

public class TestingOptions : CompareText

# Constructors

public TestingOptions.CompareText()

TestingOptions.CompareTextInitializes a new instance of the
                            TestingOptions.CompareText class.

# Properties

AdditionalOutputFilePathPath to the additional output file. Needs to be set if
                            OutputDiffType is PDF.ContinueOnErrorSpecifies if the automation should continue even when the method throws an
                        error.GenerateSemanticResultPerform the verification using the AI capabilities that
                            AutopilotTM offers to obtain a semantic interpretation of the
                        differences. This generates an additional result with the semantic
                            differences.Depending on licensing plan you
                            enrolled in, the Semantic result type consumes one of the
                            following for each coded automation API execution:For the Flex
                                    licensing plan, the Semantic result type consumes one AI
                                    unit.For the Unified
                                    Pricing licensing plan, the Semantic result type consumes
                                    one Platform unit.For more information on consumption, visit .OutputDiffTypeDocumentOutputDiffTypeThe format in which you want to show the differences between texts.OutputFilePathThe path to the output file that shows the differences between texts.Rules<ComparisonRule>List of rules to be applied. They can be of type RegexRule
                        or WildcardRule.WordSeparatorsThe characters that should be considered as word separators in the
                        comparison process. For example, if the texts you are comparing commonly use
                        a period . or backslashes / for separating
                        words, then you can define these as word separators. By default, the
                        separators are period ., comma , ,
                        exclamation mark, !, question mark ?,
                        colon :,  backslash n \n.

# Apply for a loan with UiBank

This tutorial shows how to create a Coded Test Case
                (applyForLoan.cs) to verify whether the loan rate calculated by the UiBank
            application matches your own calculation. The test case references a Coded Source File
                (LoanApplication.cs), containing a class with get and set methods used for
            generating test data.

PrerequisitesUiAutomation.Activities 23.10 or
                    higher.Testing.Activities 23.10 or
                    higher.System.Activities 23.10 or
                    higher.UiBank.

# Create a code source file

1. Create a class called LoanApplication.
2. Create a public object for every field in the Loan Application form, and use the get and set methods for each of them.Later, assign values to the objects using either pre-defined values or coded automation APIs such as RandomString or RandomNumber. public class LoanApplication { public string email {get;set;} public int income {get;set;} public int loanAmount {get;set;} public int loanTerm {get;set;} public int age {get;set;} public int expectedLoanRate {get;set;} }

![loan_application_coded_test_case=GUID-2655F3DA-7EE5-41FD-A4AE-AE48B952FF79=1=en=Default](/images/loan_application_coded_test_case=GUID-2655F3DA-7EE5-41FD-A4AE-AE48B952FF79=1=en=Default.png)

# Create the coded test case

Create a new Coded test case (File group > New > Coded test
                        case) and name it applyForLoan.Reference the Coded source file that you created previously in your Coded Test
                    Case to generate data.private LoanApplication myLoanApplication;Inside the public class of the Coded Test Case (applyForLoan), but
                    outside the Execute method, create another method called
                        InitializeTestData. Here you set the values for each field inside the
                    Loan Application form.public void InitializeTestData()
{            
            myLoanApplication = new LoanApplication();
            myLoanApplication.age = 42;
            myLoanApplication.email = "john.doe@uipath.com";
            myLoanApplication.income = 30000;
            myLoanApplication.loanAmount = decimal.ToInt32(testing.RandomNumber(20000,30000,0));
            myLoanApplication.loanTerm = 5;
            myLoanApplication.expectedLoanRate = 8;
}In the Arrange section, initialize the test data for your test case. InitializeTestData(); Capture all the UI elements that you want to use in your coded test case inside
                    the Object Repository.Access all the UI elements in the application and start automating! Open the
                    UiBank application and choose to apply for a loan.var homeScreen = uiAutomation.Open(ObjectRepository.Descriptors.UiBank.HomeScreen);
                homeScreen.Click(ObjectRepository.Descriptors.UiBank.HomeScreen.Products);
                homeScreen.Click(ObjectRepository.Descriptors.UiBank.HomeScreen.Loans);
        var applyForLoanScreen = uiAutomation.Attach(ObjectRepository.Descriptors.UiBank.ApplyForLoan);
				applyForLoanScreen.Click(ObjectRepository.Descriptors.UiBank.ApplyForLoan.ApplyForALoan);
Fill in the Loan Application form with the test data that you previously
                    initialized.var loanApplicationForm = uiAutomation.Open(ObjectRepository.Descriptors.UiBank.LoanApplication);

 loanApplicationForm.TypeInto(ObjectRepository.Descriptors.UiBank.LoanApplication.EmailAddress, myLoanApplication.email);
 loanApplicationForm.TypeInto(ObjectRepository.Descriptors.UiBank.LoanApplication.LoanAmountRequested, myLoanApplication.loanAmount.ToString());
 loanApplicationForm.SelectItem(ObjectRepository.Descriptors.UiBank.LoanApplication.LoanTerm, "5");
 Log(loanApplicationForm.ToString());
 loanApplicationForm.TypeInto(ObjectRepository.Descriptors.UiBank.LoanApplication.CurrentYearlyIncome,"30000");
 loanApplicationForm.TypeInto(ObjectRepository.Descriptors.UiBank.LoanApplication.Age, myLoanApplication.age.ToString());
In the Act section add the action of selecting the Submit
                    button.loanApplicationForm.Click(ObjectRepository.Descriptors.UiBank.LoanApplication.SubmitLoanApplication);In the Assert section, retrieve the loan rate that the application
                    calculated and verify if it matches the loan rate that you estimated in the
                        InitializeTestData method.var loanResultsScreen = uiAutomation.Attach(ObjectRepository.Descriptors.UiBank.LoanResults);

 var actualLoanRate = loanResultsScreen.GetText(ObjectRepository.Descriptors.UiBank.LoanResults.LoanRate);
 testing.VerifyExpression(actualLoanRate == myLoanApplication.expectedLoanRate.ToString(),"The expected and actual loan rates are equal.",true, "Verify Expression", true, false);

Sample projectTo follow the steps and try out the tutorial yourself, see the following sample
                project: Apply for a loan with UiBank.

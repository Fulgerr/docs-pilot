# Designing validation for existing
        apps

To enhance the user experience and productivity, you can use the Trigger-based Attended
            Automation solution to design custom validation for existing applications. This tutorial
            demonstrates how to design validations using callouts, forms, and triggers, for a smooth
            user experience while using the UiDouble sample application.

The steps below show an overview on how to create validation for the UiDouble
                application:Create a callout with only a
                        Label/Header component, meant to display the validation message at
                    runtime (callout.uiform).Create a general workflow that
                    validates the value typed in the On Cash In and On Us Check UI
                    elements (validate.xaml). Whenever the validation condition is broken (in
                    this example, elDouble > minValue), a callout with the
                    appropriate message (for example, text) shows.Create a trigger workflow to
                    validate the data inside the On Us Check field. It should contain an
                        Application Event Trigger activity and
                    an Invoke Workflow File activity. This means that when the user adds data
                    into the field, the validate.xaml file is invoked to perform validation
                        (on us check changed.xaml).Create a trigger workflow to
                    validate the data inside the Cash In field. It should contain an
                        Application Event Trigger activity and an Invoke Workflow File
                    activity. This means that when the user adds data into the field, the
                        validate.xaml file is invoked to perform validation (on cash in
                        changed.xaml).Create another trigger workflow
                    that validates both fields, when user clicks Accept. You can achieve this
                    using an Application Event Trigger activity. If both fields are valid,
                    then you can replay the user event that clicked the Accept button (on
                        accept clicked.xaml).

# Sample project

Learn how to create validation for the UiDouble app, using this sample project as inspiration. You can
                download the UIDouble application here.

# Video example

Check out the video below, that walks you through designing
                the sample project and then testing it.

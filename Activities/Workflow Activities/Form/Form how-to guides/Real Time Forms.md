# Real Time Forms

This tutorial shows how to change values inside a form
            while the form is displaying. This can be achieved using the Continue workflow
                execution feature inside the Show Form activity, Form trigger
                activity, and the Get Form Values and Set Form Values
            activities.

This specific tutorial demonstrates how to display or
            auto-fill content inside a form, based on the values of other form components.

Create the Main workflow. Add Show Form and a  Run Local
                        Triggers activity.Create a Form file that asks users for their consent to participate in a
                    study. Name it as Study participation consent.Add a Radio component, asking the user if it wants to
                            participate in the study.Remember the Property Name so you can retrieve the user's
                            answer and then update the form data.Add a Radio component, asking the user if it's 18 or
                            above.Remember the Property Name so you can retrieve the user's
                            answer and then update the form data.Add two Label/Header components. One of them should display a
                            message when the user wants to participate and is over 18 years old. The
                            other component should display a message when the user wants to
                            participate, but isn't over 18 years old.Add a Text Field component to ask for the user's full
                            name.Add a Number component to ask for the user's age.Add a Text Field component to ask the city where the user
                            lives.Add a Text Field component to auto-fill the district where the
                            user lives in, based on the city it provided.Create a trigger workflow for the scenario where a user doesn't want to
                    participate in the study (if user doesn't want to
                    participate.xaml).Add a Form trigger activity for the Study participation
                                consent form. As the event, choose when the first Radio
                            component changes.Add a Get Form Values activity. Select the Study
                                participation consent form. In the Arguments collection,
                            add an entry for the first Radio component. For this example, add the following entry:KeyTypeValuewantToParticipate (the
                                                  Property Name of the first Radio
                                                component)StringdesireToParticipate (global
                                                  variable)With this activity you can learn if the user wants to participate in
                            the study or not.Add an If activity, and set the condition if it's true that the
                            user doesn't want to participate in the study.For this example, use the following condition:
                                desireToParticipate = "no"In the Then block, add a Close Form activity and a
                                Stop Local Triggers activity.This closes the form and then the automation if the user doesn't want
                            to participate in the study.Create a trigger workflow to check if the user that wants to participate in the
                    study, is 18 or above (check if user of legal age.xaml).Add a Form trigger activity for the Study participation
                                consent form. As the event, choose when the second Radio
                            component changes.Add a Get Form Values activity. Select the Study
                                participation consent form. In the Arguments collection,
                            add an entry for the second Radio component.For this example, add the following entry:KeyTypeValueareYou18OrAbove (the Property
                                                  Name of the second Radio
                                                component)areYou18OrAboveofAgeAdd an If activity, and set the condition if it's true that the
                            user is 18 or above.For this example, use the following condition: ofAge =
                                "yes" And desireToParticipate = "yes"In the Then block, add a Set Form Values activity, where
                            you pass in a custom message for the user, inside a
                            Label/Headercomponent.For this example, add the following entry:KeyTypeValueover18  (the Property
                                                  Name of a Lable/Header
                                                component)String"Awesome! Please fill in the rest of the form to
                                                enroll in the study."Similarly to the previous steps, add another If activity for the
                            scenario when the user isn't 18 or above and can't fill in the form
                            anymore.For this example, use the following condition: ofAge = "no"
                                And desireToParticipate = "yes".In the Then block, add a Set Form Values activity where
                            you display the custom message, then close the form and stop the
                            automation.Create a trigger workflow to auto-fill the district where the user lives based
                    on the city it inputs (auto fill city district.xaml).Add a Form trigger activity for the Study participation
                                consent form. As the event, choose when the City
                            component changes.Add a Get Form Values activity to get the city where the user
                            lives in, using the following argument entry:KeyTypeValuecity (the Property Name
                                                of the City component)StringuserCity

Check out the result of this tutorial in the video
                    below:

Workflow exampleTo follow the steps and try out the tutorial yourself, check out the sample project
                    here.

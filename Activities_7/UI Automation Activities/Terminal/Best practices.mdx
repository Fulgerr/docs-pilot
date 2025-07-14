# Best practices

# Close the Terminal Session when it is no longer needed

When using the Output Connection/Existing Connection properties,
                                make sure to close the Terminal Session when it is no longer
                                needed in the workflow/process.

Leaving the Terminal Session open can have adverse effects on
                                performance and on the execution of other terminal sessions.

To properly close a previously saved Terminal Session, add a new
                                        Terminal Session (with an empty body) to your
                                workflow, with the following properties:Close
                                                Connection: True.Existing
                                                Connection: The TerminalConnection
                                                variable that contains the saved session.

# Avoid using Output Connection/Existing Connection properties for the
                                IBM EHLLAPI provider

Avoid using the Output Connection/Existing Connection properties
                                in conjunction with the IBM EHLLAPI provider.

These options are used for ensuring the connection persistence between
                                workflows.

Since the connection is already persisted in the terminal emulator, a
                                second layer of persistence is not needed. Also, this avoids having
                                to perform the extra steps to close the connection as described
                                above.

# Avoid nesting Terminal Sessions within other Terminal
                                Sessions

Avoid using a Terminal Session activity nested in another
                                        Terminal Session activity.

This also applies to indirect nesting, such as calling from a Terminal
                                        Session body a workflow that contains a Terminal
                                        Session with the same connection, or calling a library
                                function that contains a Terminal Session with the same
                                connection.

# Avoid using field-based activities

Avoid using field-based activities like Get Field/Set Field. It is
                                not always clear if or how the screen is split into fields, which
                                may lead to confusion.

Different providers may split the same screen in different ways because
                                different APIs are used.

It is safer to use methods that mimic human actions, like combinations of
                                        Move Cursor or Send Control Key = Tab followed
                                by Send Keys activities for sending data to the screen.

To retrieve data from the screen, use the Get Screen Area or
                                        Get Text At Position activities.

# Use the Wait Screen Text activity

Use the Wait Screen Text activity to make sure the correct screen
                                was loaded before doing any operations on it.

# Use the Get Screen Area activity

For extracting tabular data from screens in a DataTable
                                format, use the Get Screen Area activity for the part of the
                                screen containing the table.

Use the output of this activity as input for the Generate Data
                                        Table activity from the UiPath.System.Activities
                                package.

# List All Chat Messages

# Description

Retrieves the list of messages in a specified chat.

# Untitled Section

# Configuration

Chat - The name of the
                        chat group from where you want to retrieve the list of messages. This field
                        is case sensitive. Typing at least 3 characters of the name enables you to
                        select the chat from a drop-down list or you can type in a custom chat ID.
                        This field supports String type input. Where - Adds a
                        datetime filter. This field must be used alongside the Order By
                        filter. If createdDateTime is selected in Order By, the
                        activity filters only by the time of creation of the messages, otherwise it
                        uses lastModifiedDateTime. Only gt and lt operators are
                        supported in this field. An example for this field is
                            lastModifiedDateTime gt 2022-09-22T00:00:00:000Z.Order By - The order
                        of the messages, based on their respective creation date or modified
                        date.









* Chats List - Automatically generated output variable.

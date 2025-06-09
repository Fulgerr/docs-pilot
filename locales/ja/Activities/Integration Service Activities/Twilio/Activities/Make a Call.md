# Make a Call

UiPath.Twilio.IntegrationService.Activities.MakeCall

# Description

Make a voice call to a phone number in Twilio.

# Project Compatibility

Windows | Cross-Platform

# Configuration

Connection - The connection established in Integration Service.
                        Access the drop-down to choose, add or manage connections.To - The receiver's phone number.From - The caller's
                        phone number that is registered with Twilio.Say - The TwiML instructions for the call. For example, Ahoy
                            there!. If both Say and URL property fields are
                        provided then only the URL property is taken into consideration.URL - The complete URL of the TwiML instructions for the call.

# Advanced

Output

Response - The call you made, returned in a Calls
                        object.

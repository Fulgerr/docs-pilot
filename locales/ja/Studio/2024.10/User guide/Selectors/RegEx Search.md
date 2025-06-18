# RegEx Search

# About RegEx search

A
                regular expression, or RegEx, is a special text string for describing a search
                pattern. This makes them ideally suited for searching, text processing, and data
                validation. Using the RegEx search capabilities in selectors enables you to identify
                multiple target element with a single search execution. Without RegEx, multiple
                selectors would have been built to identify each target element.

# How RegEx search works

To use the RegEx search capabilities, a matching option needs to be included in the
                tag of the element you want to identify, as follows:

OptionDescriptionmatching:<tag_name>=’regex’Allows you to specify the target search tag, determined by the
                                        <tag_name> value.<tag_name>='<regex_command>'Allows you to specify the search pattern through the
                                        <regex_command> expression used to
                                    identify the <tag_name>.

# Supported selector types

Currently, the
            RegEx search is supported by the following selector types:

Selector typeSupport<wnd><html><webctrl><java><ctrl><uia><sap> Tags which identify a process name. Example:
                                    <html app="firefox.exe">.

# Examples of using RegEx search

Let's assume that we want to create an automation process which
                targets the Calculator application. However, for the purpose of this example, the
                value of the <name> tag alters between 0 and 2. Without the
                RegEx search, two selectors would have been built, one for each value of the
                    <name> tag, as follows:

Selector for
                    <name='Display is 0'>
                    tag

<wnd app='applicationframehost.exe' appid='Microsoft.WindowsCalculator_8wekyb3d8bbwe!App' title='Calculator' />  <uia cls='LandmarkTarget' />  <uia automationid='CalculatorResults' name='Display is 0' role='text' />

Selector
                    for the <name='Display is 2'>
                tag

<wnd app='applicationframehost.exe' appid='Microsoft.WindowsCalculator_8wekyb3d8bbwe!App' title='Calculator' />  <uia cls='LandmarkTarget' />  <uia automationid='CalculatorResults' name='Display is 2' role='text' />

Introducing
                RegEx search inside the second <uia> tag makes it possible to
                generate a single selector to match both cases. A valid selector, in this case,
                looks something like
                this:

<wnd app='applicationframehost.exe' appid='Microsoft.WindowsCalculator_8wekyb3d8bbwe!App' title='Calculator' /> 
<uia cls='LandmarkTarget' /> 
<uia automationid='CalculatorResults' name='Display is \d' role='text' matching:name='regex' />

The
                    matching:name='regex' attribute instructs our selector to use
                RegEx to identify the <name> tag, while the
                    <name='Display is \d'> command returns all the numerical
                values for the <name> tag it identifies.

Below are a
                couple of more examples on how RegEx search works and what values it returns:

Regular expressionDescriptionReturned results(.*RPA.*)|(.*Robotic Process
                                        Automation*)Matches every string containing the RPA or
                                        Robotic Process Automation strings.(...) leading
                                            RPA tool (...)UiPath is a
                                            Robotic Process Automation (...)^Index[0-5]Matches every string starting with the
                                        Index value, followed by any number between
                                    0 and 5.Index5Index03

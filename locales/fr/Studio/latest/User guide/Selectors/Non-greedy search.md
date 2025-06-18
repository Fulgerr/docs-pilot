# Non-greedy search

# About non-greedy search

The non-greedy search makes it possible to identify the target element from a pool of similar
                applications, matching the attributes you specify. It needs to be included in the
                top-level tag of a selector.

If a generated selector contains the idx attribute, its value is set by default to *.

# How non-greedy search
                works

Introducing non-greedy search in your selectors instructs it to search through all
                the active windows or browser instances which match the top-level tags of your
                selector, and not just the window instances in focus.

Non-greedy search makes use of the idx() attribute, which needs to
                be included in the top-level tag, as follows:

OptionDescription<idx='*'>Searches through all active window instances for the element
                                    matching the top-level tag attributes.The <idx='1'> option only searches through
                                    window instances in focus.

# Supported selector types

Currently,
            non-greedy search is supported for the following selector types:

Selector type
                            
                                Support
                            <wnd><html><webctrl><java><ctrl><uia><sap><silverlight> Selectors inside the following containers:Open
                                            ApplicationOpen
                                            BrowsersAttach
                                            WindowAttach
                                            Browser Universal Windows Platform (UWP)
                                applications

# Example of using non-greedy search

For the purpose of the example, let's assume that we want to build an automation process which
                interacts with the Windows 10 Calculator app.

However, there are two active instances, a Standard Calculator and a Programmer
                Calculator.

We only need to interact with the Standard Calculator, so we introduce the
                    idx='*' option in the top-level tag, in our case
                    <wnd>.

The following selector is generated, which returns the Calculator instance we are
                looking for:

<wnd app='applicationframehost.exe' appid='Microsoft.WindowsCalculator_8wekyb3d8bbwe!App' 
title='Calculator' idx='*' />
<uia cls='LandmarkTarget' />
<uia automationid='ProgrammerOperators' cls='NamedContainerAutomationPeer' name='Radix selection' />
<uia automationid='hexButton' cls='RadioButton' name='HexaDecimal ‭0 ‬' />

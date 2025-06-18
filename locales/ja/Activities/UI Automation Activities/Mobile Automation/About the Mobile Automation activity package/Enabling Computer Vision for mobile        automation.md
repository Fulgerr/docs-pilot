# Enabling Computer Vision for mobile
        automation

Computer Vision enables you to use UiPath's neural network
            in order to identify UI elements and interact with them via Robots, simulating human
            interaction. In the context of Mobile Automation, the Computer Vision feature enhances
            the number of target elements that you can identify, allowing you to automate UI
            elements that are otherwise harder to identify and automate.

See the activities that can use Computer Vision in the
            table below:ActivityDescriptionExtracts the text from a specified UI element.Types the specified text into a target UI element.Returns a boolean variable that states whether a specified UI
                                element exists.Swipes the screen in a specified direction and for a specified
                                amount of times.Returns a boolean variable that states whether a specified UI
                                element exists.

To start discovering mobile UI elements using Computer
            Vision, you need to set up your Computer Vision server, for either cloud or on-premises
            servers. You can set up the Computer Vision server in the Project Settings menu
            of the project that you are working in.

The Computer Vision configuration section is split
            into three other sub-sections:Server - the URL for the
                    type of Computer Vision server that you want to connect to: cloud or
                    on-premises. The default value for the Run value and Debug value
                    server fields is the cloud instance of Computer Vision:
                        https://cv.uipath.com.Api Key - the Computer
                    Vision's API key, specific for your organization.Use Local Server - use a
                    local Computer Vision server.

Known limitationComputer Vision for mobile automation doesn't support CJK (Chinese, Japanese, Korean)
                languages.

### Cloud Computer Vision server

To connect to a cloud Computer Vision server, you can authenticate using an API key, or a User
            token.

# API key

1. In the Project panel, go to Project Settings, Mobile Automation, and then focus on the Computer Vision section.
2. Under Server in the Run value and Debug value fields, input the URL of a Computer Vision cloud server. https://cv.uipath.com is the default value. For changing the endpoint, visit Public endpoints.
3. Input your organization's Computer Vision API key. Visit API keys to learn how to get your Computer Vision API key.

# Authenticating to the Computer Vision server

Visit Authentication to learn how to
                authenticate to the Computer Vision Server, so you can use the corresponding
                capabilities inside your project.

# Related articles

To learn how to configure your cloud Computer Vision server, visit the resources
                    below:Public endpointsChanging the server endpoint


### Enabling local Computer Vision server

Follow these steps to use a Computer Vision local server:

1. Install the UiPath.ComputerVision.LocalServer package.
2. In the Project panel, go to Project Settings , Mobile Automation , and then
                                focus on the Computer Vision section.
3. Under Use Local Server , set
                the Run value and Debug value to True .


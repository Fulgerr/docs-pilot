# Generating code

Autopilot™ allows you to autogenerate code anywhere within your coded automation. The
            generated code can originate from a comment or any custom prompt that you write.

To use this feature, you can select the Autopilot icon Autopilot icon on a blank code line and then enter your prompt into the Ask Autopilot to
                generate code field. Also, to generate code from comments, you can right-select
            a comment, then select Generate Code.

To generate code with Autopilot you can only use Orchestrator
            deployed in Automation
      CloudTM.

# Generating code from a comment

You can generate code directly within your coded automation using comments. For
                example, consider a comment that outlines the steps of an automation such as "Open
                Google and click the search icon.". If you select this comment, right-click, and
                then select Generate Code, then Autopilot starts generating a response code
                for it. Additionally, you can generate code from a comment by prefixing your comment
                with the word Generate (for example: // Generate:
                    Open Google and click the search icon).

After Autopilot generates the code, you can choose to Confirm the code or
                    Discard it.When you generate code from a
                    prompt and then select Confirm, the newly generated code will be
                    highlighted. However, if you choose Discard, the generated code will be
                    removed along with the prompt. If you edit the generated code after confirming
                    it for the first time, and then select Discard, it will only remove the
                    prompt, not the modified generated code.

# Generating code using a prompt

You can generate code using a prompt that you engineer. For example, navigate to a
                blank code line and select the Autopilot icon Autopilot icon, or right-click in the code editor and select Generate Code.
                Additionally, you can also use the Ctrl + I shortcut. Enter your
                prompt in the Ask Autopilot to generate code field then select
                    Generate.

![ask_autopilot_to_generate_code=GUID-218AB336-0A13-4861-93F1-09DF06C5E92B=1=en=Default](/images/ask_autopilot_to_generate_code=GUID-218AB336-0A13-4861-93F1-09DF06C5E92B=1=en=Default.png)

# Implementing methods, classes, and interfaces

Generating code in Studio also involves creating implementations for methods,
                classes, or interfaces in your automations. For example, say you have a method,
                class, or interface with comments and an XML summary, but no actual code.

In this context, the Implement method, Implement class, Implement
                    interface, or Implement local function text will appear above the
                method name. When you click on Implement method or any of the other
                variations, the system generates the requisite code for the method. Please note,
                this operation might result in the creation of additional methods or classes.

For this generative AI scenario, the prompt pulls from the subject name, method
                description (in the form of a comment above it), and comments within the method.

![implement_methods_generate_code=GUID-AB3DD2F7-AF7A-4CF0-96EF-2612331ABEEF=1=en=Default](/images/implement_methods_generate_code=GUID-AB3DD2F7-AF7A-4CF0-96EF-2612331ABEEF=1=en=Default.png)

# Best practices

Visit AI-powered automation: Best practices to
                check tips for efficiently generating code for a coded automation.

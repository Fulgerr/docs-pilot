# About the standalone installation model

In the standalone installation model, web products in the platform are deployed independently using their dedicated installers. Products have their unique .msi installers, such as UiPathOrchestrator.msi, facilitating separate deployments either on your internal servers or a public cloud environment based on business requirements.

This guide provides documentation for all users on how to use the portal. For administrators, it explains how to set up the organization security, authentication, and other settings.

## Key benefits

1. Infrastructure flexibility: The choice to opt for on-premises or cloud-based deployment provides operational flexibility aligned with your organization's strategy.
2. Tailored deployment: Being responsible for maintaining, scaling, and upgrading offers the ability to tailor the management and growth of the infrastructure to your unique needs.
3. Easier troubleshooting: Easier orchestration and efficient system troubleshooting owing to standalone architecture proves beneficial in managing productivity and resolving issues.


## Product and service offering

The UiPath platform consists of various products designed to automate processes, enhance collaboration, and drive operational efficiency:

* Action Center UiPath Action Center is a tool designed to help you manage and resolve exceptions, errors, or decisions that require human intervention in your automation workflows. It provides a central interface for handling these exceptions, allowing human workers to review, make decisions, and take actions as needed to ensure the successful completion of automated processes. Visit the Action Center documentation.
* Agents UiPath Agents is a low-code development environment to build, evaluate, and publish enterprise Agents. It provides all of the necessary elements to create an agent which uses a large language model to interpret a natural language prompt, retrieve relevant context, call UiPath tools, and bring in humans as necessary to review output. Visit the Agents documentation.
* AI Center UiPath AI Center is a service that allows you to deploy, manage, and continuously improve Machine Learning models and consume them within RPA workflows in Studio. Visit the AI Center documentation.
* AI Computer Vision UiPath AI Computer Vision is a machine-learning based method used to visually identify all the UI elements on a computer screen and interact with them via UiPath Robots, simulating human interaction. It does not require or use the underlying properties of applications, but only the aspect and relationship of various screen elements. Visit the AI Computer Vision documentation.
* Apps UiPath Apps is a low-code application development platform that enables you to build and share enterprise-grade custom applications that deliver engaging user experiences. Using Apps, you can quickly build custom business applications that connect to data in any underlying cloud or on-premises system using the power of automation. Visit the Apps documentation.
* Automation Cloud Robots - Serverless UiPath Automation Cloud Robots - Serverless make it easy to run background automation without worrying about the necessary infrastructure. They provide you with complete freedom from provisioning, managing, maintaining, and scaling any underlying infrastructure. UiPath handles all the work behind the scenes so you do not have to deal with containers, virtual machines, or physical servers. Visit the Automation Cloud Robots - Serverless documentation.
* Automation Cloud Robots - VM UiPath Automation Cloud Robots - VM is a hassle-free solution that streamlines the process of setting up the necessary infrastructure for running automations. It provides ready-to-use virtual machines where you can run automations. You just need to configure the virtual machine based on your need, and it is all set to run your tasks. Visit the Automation Cloud Robots - VM documentation.
* Automation Hub UiPath Automation Hub is a collaborative process identification, automation pipeline management, and process repository tool. Its goal is to accelerate the adoption of RPA across your organization, by building an RPA Community of Interest. Visit the Automation Hub documentation.
* Automation Ops UiPath Automation Ops is a tool that enables you to manage and implement governance policies based on user profiles, and to manage the feeds available in your organization. Visit the Automation Ops documentation.
* Communications Mining Communications Mining, or Comms Mining, is a field that focuses on understanding and extracting value from communications data. It is the practice of converting the unstructured information this data contains into structured, machine-readable data that can then be used for analytics and automation. Visit the Communications Mining documentation.
* Data Service UiPath Data Service is a persistent data storage service that brings no-code data modeling and storage capabilities to your automation projects. Visit the Data Service documentation.
* Document Understanding UiPath Document Understanding uses pre-defined solutions to extract and categorize data from common document types. Utilizing pre-trained models, it can pull information from standard documents with ease. Visit the Document Understanding documentation.
* Insights UiPath Insights is a tool that serves as a platform for data modeling and analytics using a combination of available business metrics and operational insights into your automations and robot performance. Visit the Insights documentation.
* Integration Service UiPath Integration Service is the component of the UiPath Platform that makes the automation of third-party applications much easier by standardizing authorization and authentication, helping you manage API connections, and also allowing faster integration into SaaS platforms. By using prebuilt APIs, the development of automation projects in UiPath Studio is more simple and more consistent, regardless of the third-party applications you are automating. Visit the Integration Service documentation.

* Maestro UiPath Maestro combines robotic and agentic workflows to seamlessly integrate human, AI, and robotic interactions, driving hyper-efficient business processes. With its robust capabilities, Maestro empowers businesses to optimize their operations at scale while simplifying complex workflows. Visit the Maestro documentation.
* Orchestrator UiPath Orchestrator is a tool for streamlining the deployment, monitoring, and governance of your automation processes and robots, giving you flexibility to schedule and trigger these processes as per your requirements. It also supports the management of transactional data, often used in automating business processes. Visit the Orchestrator documentation.
* Process Mining UiPath Process Mining is a process mining solution that transforms data from your IT systems into visual interactive dashboards, allowing you to view existing value decreases, bottlenecks, and discrepancies, as well as understanding the root-causes and possible risks. It offers real-time, valuable insights to improve business processes over time. Visit the Process Mining documentation.
* Solutions Management UiPath Solutions Management provides an out-of-the-box means to manage the lifecycle of your solutions, once built. This set of capabilities comes into play once you are done developing your solutions, and you want to promote them to a new environment. Visit the Solutions Management documentation.
* Studio Web UiPath Studio Web enables you to build and test cross-platform automations across online business apps and services. All you need to start using Studio Web is a web browser. You can access it from any operating system, it requires no installation, it has no IT dependencies, and it is always up to date. Visit the Studio Web documentation.
* Task Mining UiPath Task Mining offers insights into ongoing processes on your team's desktops, uncovering potential areas for automation and process improvement. This tool logs desktop data for each user action and uses AI to analyze it, thereby, giving you actionable insights for identifying automation ideas. Visit the Task Mining documentation.
* Test Manager UiPath Test Manager is a test management tool for enterprise testing. It integrates into your ecosystem and adapts to your way of working, whether you use ServiceNow, SAP Solution Manager, Jira, Azure DevOps. Visit the Test Manager documentation.

We are currently in the process of onboarding several other products. Stay tuned.


## About Identity Server

UiPath Identity Server is a service that offers centralized authentication and access control across UiPath products. Its purpose is to provide a coherent experience and parity of functionality for authentication and some aspects of authorization across all UiPath products and services. For Identity Server, these products and services are considered clients.

With the integration of Identity Server, its clients have a shared onboarding and user management experience. Behind the scenes, authentication is performed via Identity Server, which offers SSO experience and generates tokens to communicate with other products via APIs. Once a user signs in, Identity Server seamlessly performs the calls when accessing other products or services. The sign-out experience is similar - once a user signs out of one client, Identity Server performs the sign-out calls to all the other clients.

Identity Server also acts as a federation gateway, supporting external identity providers, thus shielding its client applications from details of how to connect to these external providers.

Identity Server offers Authentication as a Service, containing the centralized login logic and workflow for all its integrated applications, making it easier for services to integrate with each other over one standard protocol family: OAuth. It is built in .NET Core 3.1 on top of the IdentityServer4 open-source library, and supports the OpenID Connect and OAuth 2.0 frameworks.

# Settings

Identity Server's settings can be configured as follows:

* A series of settings are configured during installation. For more details, refer to Installation.
* In-depth configurations specific for your environment are performed within its appsettings.json file.
* External identity provider specific settings are configured within its Identity Management portal.Identity Server is mandatory in an Orchestrator installation or upgrade process. We don't support Orchestrator deployments without it.

# Orchestrator integration

Orchestrator is fully integrated with Identity Server. For Orchestrator, this integration means that:

* Logging in to Orchestrator is performed via Identity Server, and not through external identity providers.
* Orchestrator can consume user access tokens, service to service (S2S) access tokens, and robot access tokens generated by Identity Server.
* Orchestrator propagates to and reads data from Identity Server. When creating a user or a tenant in Orchestrator, an entry for that user/tenant is automatically created in Identity Server. Robot information and some settings are also propagated to Identity Server. The user login attempts are sent from Identity Server to Orchestrator.


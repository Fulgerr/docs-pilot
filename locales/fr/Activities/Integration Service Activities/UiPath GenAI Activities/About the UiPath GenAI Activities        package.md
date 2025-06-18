# About the UiPath GenAI Activities
        package

The UiPath GenAI Activities connector and activities allow you to work directly with
            UiPath-managed large language models (LLMs) from a variety of third parties. You can
            benefit from UiPath AI Services such as the AI Trust Layer, which gives you access to
            the most popular LLMs without the need to manage subscriptions, and quality-optimized,
            prompt-based activities with easy-to-use inputs and outputs directly in Studio Web,
            Studio Desktop and Apps build experiences.

Ranging from a generic completion activity called Content Generation, that allow
            you to define the prompt and model on your own, to predefined, use-case-specific
            activities like Summarize or Translate, the UiPath GenAI Activities package offers a
            broad range of generative AI functionalities that can be inserted directly into
            automations.

# Context Grounding

Context Grounding is a
                component of the UiPath AI Trust Layer which allows you to bring in your data to
                generate more accurate, reliable GenAI predictions. Context Grounding is designed to make your business data LLM-ready without the need
                for any additional subscription to embedding models, vector databases, or large
                language models (LLMs).

You can create representative indexes and embeddings of business data that UiPath GenAI features
                can reference for contextual evidence at runtime. To learn more about its key
                features and use cases, see About Context Grounding.

# How
                it works

UiPath GenAI Activities interact directly with a variety of internal
            UiPath services used to normalize and transform requests sent to model providers. You
            can create the connection directly, without any authentication parameters or
            subscription to a third-party service. However, you must still create and maintain the
            connection for use in Studio and Studio Web workflows, and Apps.

You can disable GenAI Activities via the AI Trust Layer
                    Automation Ops policy. For more information, see Settings for AI Trust Layer Policies in the
                    Automation Ops User Guide. See the activities page for a
                complete activity list and  for more
                information. To learn about the connector, see the UiPath GenAI Activities page from the Integration
                Service user guide.

Check out the  page to learn what LLMs are
                used in GenAI Activities.

# Licensing

GenAI Activities consume either AI Units or Platform Units per execution, including
                design time and runtime executions, based on your licensing plan. For details, refer
                to Licensing plan framework.

Flex licensing plan, with AI
                        Units: Each GenAI Activity execution, regardless of token-size, is charged 1
                        AI Unit against the available allotment. Context Grounding requests are
                        charged separately: one request consumes 1 AI Unit. If you are using a GenAI
                        activity with Context Grounding, the total execution cost is 2 AI Units.
                            The AI units consumption associated to the use of GenAI Activities is
                            displayed in Automation Cloud Admin, on the Consumables tab of
                            the organization- and tenant-level Licensing page. Unified Pricing licensing
                        plan, with Platform Units: Each GenAI Activity execution, regardless of
                        token-size, is charged 0.2 Platform Units against the available allotment.
                        Context Grounding requests are charged separately: each request consumes 0.2
                        Platform Units. If you are using a GenAI activity with Context Grounding,
                        the total execution cost is 0.4 Platform Units.



UiPath reserves the right to update the consumption rules in the future
                    based on usage patterns and additions of premium activities and features.

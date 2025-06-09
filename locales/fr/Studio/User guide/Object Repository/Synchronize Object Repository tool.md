# Synchronize Object Repository tool

The Synchronize Object Repository tool enables you to synchronize all user interface
            interacting UI Automation Modern activities with Object Repository, integrating them
            with an existing library. For Classic activities, we add only the activity target to
            Object Repository as these activities cannot be linked to Object Repository.

To access the tool, go to the Object Repository panel > select the
                Descriptors tab > select the Synchronize Object Repository icon.

If no activities are available for synchronization, a text message indicates that.



If there are activities available for synchronization, these are listed in the tool, along
            with the workflow they belong to. To synchronize these activities, select the
                Start button.



The activities are in the process of being synchronized to Object Repository. If the activity
            target exists in Object Repository, it is linked to the existing one found in the Object
            Repository library. If the activity target does not exist in Object Repository, it is
            added to Object Repository and then it is linked.



The activities have been synchronized to Object Repository. Select the Finish
            button to exit the tool.



If the Enforce Object Repository setting is set to Yes in Studio
            > Settings > Design > Design style, then you might get
            validation errors through out your workflow if the activities are not synchronized with
            Object Repository.



To solve these validation errors at once, without having to go through each activity and
            manually synchronize the newly indicated UI elements, you can simply use the Synchronize
            Object Repository tool.

# About the IPC activity package

As concepts like background processes and parallel attended execution have been introduced to the UiPath ecosystem, the need arose for business logic running on multiple threads to have the ability to communicate internally. To do this, we have chosen a simple pub-sub mechanism that enables users to create their automation processes in such a way that messages can be sent on certain channels notifying when certain sections of the execution are complete, thus prompting other sections to start execution.

This pack is meant to be used for advanced business logic where you need to define specific channels through which you can send and receive messages from a process to another, thus letting you know when certain parts of parallel processes have finished executing.

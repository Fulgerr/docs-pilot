# Feature rollout

One of the main advantages of {Delivery option no TM} is the ability to control upgrades. It satisfies specific requirements for updating your vital UiPath applications, giving you leverage over key aspects such as the following:

* Scheduling when your platform and UiPath services can undergo updates, preventing any business disruption. For instance, you can avoid updates during peak seasons such as end-of-the-year holidays.
* Determining the schedule for deploying new features to your platform. This enables you to plan the validation of automations and new features in both testing and production environments.

## About upgrade controls

We provide two types of controls:

1. Delayed release: This allows you to postpone updates for up to 30 days.
2. Blackout window: We ensure no updates take place for a specific period with a blackout window of up to 30 days.

To ensure {Delivery option no TM} organizations stay updated, we have placed the following restrictions:

* Blackout windows can only last for a continuous period of 30 days. This is to accommodate a 30-day freeze period for your end of the year needs.
* Each blackout window must be followed by a break of at least 10 days, which ensures that UiPath has ample time to roll out updates after a prolonged blackout window.
* Any modifications to the blackout window must be submitted via a ticket 5 business days ahead of the intended change.
* You are not allowed to implement any changes that would result in time being blocked within the next 48 hours, which was previously unblocked.

The following section describes a few examples to help you understand these guidelines better:

* If you are in a blackout window that concludes in 5 days, you can either extend or reduce this window since it will not block any new timeframe.
* If the blackout window finishes in 1 day, it cannot be extended because the following day would then be blocked.
* If there is no current blackout window, and you wish to establish one that begins in 1 day, such a window cannot be created.


## Managing the upgrade controls

To configure both upgrade controls available in {Delivery option no TM}, you must reach out to our support team and raise support tickets.


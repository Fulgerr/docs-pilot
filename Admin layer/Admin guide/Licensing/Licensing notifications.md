# Licensing notifications

Organization administrators can choose to receive licensing notifications by event type or by severity. Events include license expiry, consumption, and overconsumption, while severity refers to Info or Warn.

These options can be accessed by selecting the bell  icon located on the top navigation bar of the organization page.

For general details, refer to the Notifications section of this guide.

## Licensing events

The following table describes the licensing events that you can subscribe to or unsubscribe from, along with their severity level, and the means by which you can receive the notification:

Event categoryEvent nameSeverity{Delivery option}EmailLicense expiry30 days before license expiryInfo15 days before license expiryWarn7 days before license expiryWarnPlatform Unit consumption50% Platform Unit consumptionInfo75% Platform Unit consumptionInfo95% Platform Unit consumptionWarnPlatform Unit overconsumptionPlatform Unit overconsumptionWarnAI unit consumption50% AI units consumptionInfo75% AI units consumptionInfo95% AI units consumptionWarnAI unit overconsumptionAI units overconsumptionWarnAgent unit consumption50% agent unit consumptionInfo75% agent unit consumptionInfo95% agent consumptionWarnAgent unit overconsumptionAgent unit overconsumptionWarn


## License expiration




### Expiration alerts

By default, you are notified 180, 90, 30, 14, 7, and 1 day before the license expiry date. You can configure these values using the SystemJobs.LicenseExpirationAlert.DaysBefore app setting.

At host level, for single licenses distributed across multiple tenants, only the system administrator receives these email alerts. At tenant level, all active users with License - View permission receive them. The emails are localized per user.

# Grace period

Your license might include a grace period. If it does, you are notified about it at logon, and can renew the license without experiencing any service disruptions. If it does not, your robots stop working upon expiry.


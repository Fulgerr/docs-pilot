# Internet Explorer X64 troubleshooting

Internet Explorer runs by default in 32-bit. This happens regardless of your Windows architecture. As such, the Open Browser activity also opens Internet Explorer in 32-bit. However, in some cases, you might also want browser automations to run Internet Explorer in 64-bit.

Depending on your privileges, the Enhanced Protected Mode option in Internet Explorer might be on, which is one of the aspects related to browser automation. This option prevents particular requests made by websites and add-ons for security reasons. However, it can also cause some automation issues on Internet Explorer, such as inaccurate web page element detection. To prevent such inconveniences, it is advised to have this option turned off.

To automate processes using Internet Explorer in 64-bit without any risk of issues, the previously mentioned options need to be as follows:

* Enable 64-bit processes for Enhanced Protected Mode - ON
* Enable Enhanced Protected Mode - OFF.

Having Internet Explorer run in 64-bit is manually done from the Internet Properties window, as follows:

To change Internet Explorer to 64-bit, perform the following steps:

1. Click the Start button and search for Internet Properties . Alternatively, in Internet Explorer, in the Tools menu, click Internet Options . The Internet Properties window is displayed.
2. In the Advanced tab, in the Settings section, look for the Security options.
3. Select the Enable 64-bit processes for Enhanced Protected Mode check box.
4. Clear the Enable Enhanced Protected Mode check box (if selected).
5. Click the Apply button to confirm the changes and then OK to close the Internet Properties window.
6. Restart your computer for the changes to take effect. Internet Explorer now runs in 64-bit, even when opened by the Open Browser activity and with no risk of running into issues while performing web automation.

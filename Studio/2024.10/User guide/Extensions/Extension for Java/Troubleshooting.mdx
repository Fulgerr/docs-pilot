# Troubleshooting

This page presents the most frequent reasons for which the Extension for Java might not work properly, and how to solve these issues.

# Check if the Java extension works properly

Check if UiPath Studio can retrieve valid Java selectors

To check if the extension is not working properly, open UIExplorer and try to select controls inside a Java app. If the entire window is selected, it means that the extension is not working properly.

If you can select controls, but their selectors look like

<wnd app=”...” /><ctrl role=”client” /> instead of <wnd app=”...” /><java role=”...” />, then the extension is not working properly.

Please note that the UiPath Extension for Java is compatible only with AWT apps (e.g. Java Swing, Oracle Forms, Fujitsu JBK), while SWT apps are automated with Active Accessibility. To detect the type of your Java application, check the cls attribute (window class name) in UiExplorer. The class name should be similar to SunAwtFrame or javax.swing.

Check if the extension files are loaded by the Java application

1. Open Process Explorer.
2. In the View menu, select Lower Pane View > DLLS, or press Ctrl+D. A panel is displayed in the lower part of the window.
3. Select the process of your Java app and check if UiPathJavaBridgeV8.dll or UiPathJavaBridgeV8_x64.dll are loaded by your Java app.
4. Check from what path the java.dll module is loaded. A regular JRE has a path like C:\Program Files (x86)\Java\jre1.8.0_xx\bin\java.dll. A custom JRE is usually located in the application folder.

Check if the extension files have been added to the JRE

* Using a text editor, such as Notepad++, open the accessibility.properties file, which is located in the C:\Program Files (x86)\Java\jre1.8.0_xx\lib folder. If the extension is properly installed, the file should contain assistive_technologies=UiPath.UiPathBridge.
* In the C:\Program Files (x86)\Java\jre1.8.0_xx\lib\ext folder, you should find the UiPathBridge.jar file.
* In the C:\Program Files (x86)\Java\jre1.8.0_xx\bin folder, you should find UiPathJavaBridgeV8.dll or UiPathJavaBridgeV8_x64.dll.If any of the previous requirements are not met, you can try to reinstall the extension as explained above, or fix them manually.

Do not call DestroyJavaVM() if your target application executes JNI code, as user threads run within the UiPath Java Extension DLL.

# Using Java 9+ JRE applications

This applies to UI Automation packages older than 22.2.

Prior to Java 9, the Java Runtime Environment (JRE) included the jdk.attach module, which interacted with the UiPath Extension Java to generate appropriate selectors. Java 9+ only includes this module in the Java Development Kit (JDK).

Selectors are generated for any Java 9+ application opened with Java JDK. If, however, you need to create automation projects which interact with applications opened with Java JRE, you need to manually include the jdk.attach module in the target JRE.

For Java 9+, the UiPath Extension for Java works on Windows Enterprise and non-Enterprise editions with applications opened with Java JDK. For applications opened with Java JRE, the UiPath Extension for Java only works on non-Enterprise Windows editions.

# Disabling the Java Access Bridge

Having Java Access Bridge enabled creates the accessibility.properties file in the current user's home directory which overwrites the accessibility bridge loaded by the default bridge. The solution is to disable the Java Access Bridge and remove the accessibility.properties file, as follows:

1. Go to Control Panel > Ease of Access Center > Make the computer easier to see.
2. Scroll to the bottom of the page to the Other programs installed section.
3. Make sure the Enable Java Access Bridge box is not selected.
4. If the Enable Java Access Bridge box was checked go to C:\Users\current_user.
5. Delete the .accessibility.properties file. If the Enable Java Access Bridge option is not visible, you need to reinstall or update Java.

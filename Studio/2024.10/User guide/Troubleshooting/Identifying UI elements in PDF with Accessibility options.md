# Identifying UI elements in PDF with Accessibility options

Detection of UI elements for untagged PDF files is not supported for the following versions of Adobe Reader DC:19.012.2003619.012.2003519.012.2003419.010.2010019.010.2009919.010.2009819.010.2009119.010.2006919.010.2006419.008.2008119.008.2008019.008.2007419.008.20071We recommend using Adobe Reader DC 18 or Adobe Reader DC 19.012.20040 or greater.

Active Accessibility is an API which provides greater reading support for individuals with physical or cognitive difficulties. When enabled in programs, such as Adobe Reader, access, identification, or manipulation of UI elements can become difficult or prone to errors.

In Studio, this means that elements on a page of a PDF file are identified as a whole, rather than individually.

Below there are a couple of examples of UI element identification issues in PDF files you might encounter, as well as how to solve them.

Starting with the UiPath.UIAutomation.Activities package v19.5.0, the Change Reading Options of Current Document window is automatically opened and the appropriate options selected when you indicate on screen. If, however, you still encounter problems during element selection, it's recommended to manually adjust Accessibility options, as described below.

![1313042-adobe_accessibility_auto=GUID-A3868860-5AFE-402F-BCF1-2B522E30FD93=1=en=Default](/images/1313042-adobe_accessibility_auto=GUID-A3868860-5AFE-402F-BCF1-2B522E30FD93=1=en=Default.gif)

## Tagged PDF documents

In this scenario, the PDF file contains meta-information inside the page content. This means that
            Accessibility options read the embedded information (as a whole, instead of visible page
            elements) and present it to UI Explorer. This interferes with the detection of
            individual elements on the page itself:

![ee09678-reader_1_fail=GUID-B73544BB-EDC6-4050-A56F-E6932219328E=1=en=Default](/images/ee09678-reader_1_fail=GUID-B73544BB-EDC6-4050-A56F-E6932219328E=1=en=Default.gif)

# Adobe Reader 2024

To set the Read the entire document option, follow these steps in Adobe Reader
                2024:

1. Go to Menu > Preferences.
2. From the Categories list, select Reading.
3. Under Page vs Document, select the Read the entire document option from the drop-down menu.
4. Under Reading Order Options, select the Override the reading order in tagged documents checkbox.
5. To save the changes, select OK.

# Adobe Reader DC 19

The selection of UI elements inside untagged PDF files is only possible for Adobe Reader DC
                19.012.20040 or greater. You need to tag PDF files for interactive UI element
                selection to function.

Once PDF files are tagged, you need to select the following option:

1. In Adobe Reader, open the Edit menu, and click the Change Reading Options option from the Accessibility sub-menu. The Change Reading Options of Current Document window is displayed.
2. From the Reading Order drop-down, select the Tagged reading order option. This instructs Adobe Reader to ignore Active Accessibility when reading the document.
3. In the Reading Mode Options section, select the Read the entire document option.
4. Click the Start button. UI Explorer can now be used to identify individual UI elements on the page.

# Adobe Reader DC 18

To fix this, the document Accessibility reading order needs to be changed, by following these steps:

1. In Adobe Reader, open the Edit menu, and click the Change Reading Options option from the Accessibility sub-menu. The Change Reading Options of Current Document window is displayed.
2. From the Reading Order drop-down, select the Infer reading order from document option. This instructs Adobe Reader to ignore Active Accessibility when reading the document.
3. In the Reading Mode Options section, select the Read the entire document option.
4. Click the Start button. UI Explorer can now be used to identify individual UI elements on the page.


## Single visible object on page

Here, the document contains a single Active Accessibility object which is visible on a page, composed of multiple elements, such as text and pictures. However, when printed or read by Accessibility options, the object is decomposed in individual elements. The issue here is the same, as you can see:

![48e7822-pdf_2_fail=GUID-4BDDF062-E978-480E-865C-8D554D654065=1=en=Default](/images/48e7822-pdf_2_fail=GUID-4BDDF062-E978-480E-865C-8D554D654065=1=en=Default.gif)

Again, the fix is to change the document Accessibility reading order, as follows:

1. In Adobe Reader, open the Edit menu, and click the Change Reading Options option from the Accessibility sub-menu. The Change Reading Options of Current Document window is displayed.
2. From the Reading Order drop-down, select the Use reading order in raw print stream option. This instructs Adobe Reader to ignore Active Accessibility when reading the document.
3. In the Reading Mode Options , select the Read the entire document option.
4. Click the Start button. UIExplorer can now be used to identify individual UI elements on the page.


## Security option in Adobe Reader DC

This issue has been fixed
            in UiPath.UIAutomation.Activities version 22.12.PDF automation works even if
                the Protected Mode security option is enabled.

For UiPath.UIAutomation.Activities 22.10 and older and Adobe Reader DC version
            22.003.20258 (see Acrobat Reader Release
                Notes), PDF automation may be affected. It isn't possible to identify
            individual elements in PDF documents, instead the entire document is selected.

This issue is caused by a security option available in Adobe Reader DC, Enable
                Protected Mode at startup, which is enabled by default.

To fix this, disable the security option using the steps below:

1. Open Adobe Reader.
2. Go to Menu > Preferences .
3. From the Categories list,
                select Security (Enhanced) .
4. In the Sandbox Protections section, clear the Enable Protected Mode at startup checkbox.
5. A confirmation is requested. Click Yes to continue, then click OK .
6. Restart Adobe Reader. UI Explorer can
                now be used to identify individual UI elements on the page.


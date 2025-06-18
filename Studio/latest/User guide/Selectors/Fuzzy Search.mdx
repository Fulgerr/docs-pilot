# Fuzzy Search

# About fuzzy search

A selector contains a top-level tag which references the
                        target window or browser tab. It holds attributes like title, process name,
                        URL, window name, and others, which help you properly identify the elements
                        you want to use in your automation projects.

Often enough, top-level
                        tag values are subject to dynamic changes because the target application
                        rewrites them based on your actions. For example, a web page title can
                        change during the automation process, which makes corresponding selector
                        invalid.

In this regard, the selector’s fuzzy search capabilities
                        enable you locate strings based on a pattern, rather than on an exact match
                        to your input. This results in a more flexible method of identifying
                        elements and validates selectors according to multiple attributes, even if
                        some are prone to change during the automation process.

# How fuzzy search
                        works

To use the fuzzy search capabilities, a couple of matching options need to be
                        included in the top-level tag of the target selector, as follows:

OptionDescriptionmatching:<tag_name>=fuzzy
                                                  Allows you to specify the target
                                                search tag, determined by the
                                                  <tag_name> value.fuzzyLevel:<tag_name>=<numerical_value>
                                                  Determines the matching threshold for
                                                the target <tag_name>. It
                                                supports a numerical value from 0 to 1, as
                                                  follows:Closer to 0 - returns results with lower
                                                  similarity to the
                                                  <tag_name>Closer to 1 - returns results with higher
                                                  similarity to the
                                                  <tag_name>

If more elements
                        are found, the target action is executed on the first one.

# Supported selector types

Currently, the
                  fuzzy search is supported by the following selector types:

Selector typeSupport<wnd><html><webctrl><java><ctrl><uia><sap><rdp><silverlight>Tags which identify a process name.
                                                Example: <html
                                                  app="firefox.exe">.

Adding check:text="example" in a fuzzy selector checks
                              if the target element contains the specified text.For example, adding check:text="Options" to a fuzzy
                              selector checks if the target element contains the
                                    Options text.

# Examples of using fuzzy search

Fuzzy search can be used to identify nearly any type of attribute in the top-level tags of
                        selectors. In the following examples, we aim to build valid selectors with
                        attributes which is incorrectly spelled:

A. Using a high fuzziness level

Let's assume we want to build a selector to identify the
                              W3Schools Online Web Tutorials<title> attribute. For the purpose of our example,
                        the attribute is incorrectly spelled, thus making the selector
                        invalid.

<html app='firefox.exe' title='WEScho0ls Online Web Tutorials' />

To fix this, we need to introduce fuzzy search inside the <html> tag.
                        Since the attribute of interest is <title>, the
                              <tag_name> of our fuzzy search expression needs
                        to have the matching:title=fuzzy form. The mistake in our
                              <title> attribute is small, so we can use a
                        fuzziness level closer to 1. The following selector is generated, which
                        returns the correct <title> attribute, which, in this
                        case is W3Schools Online Web Tutorials:

<html app='firefox.exe' title='WEScho0ls Online Web Tutorials'
      matching:title='fuzzy' fuzzylevel:title='0.8' />

B. Using a low fuzziness level

In this second
                        example, we need to build selectors for an <aaname>
                        attribute. The target attribute is Colorpicker, but in our
                        example it is incorrectly spelled Clorker. Needless to say
                        that, with an incorrectly spelled attribute, our selector is invalid, and
                        looks something like
                        this:

<html title='W3Schools Online Web Tutorials' /> 
<webctrl aaname='Clorker' parentid='main' tag='IMG' />

The fuzzy search needs to be included in the <webctrl> tag. In this case,
                        our target is <aaname>. Since there are more mistakes
                        in the spelling of our target, we reduce the fuzziness level closer to 0, so
                        that there are greater chances of accurate detection. The following selector
                        is generated, which returns the correct <aaname>
                        attribute, which, in this case is Colorpicker:

<html title='W3Schools Online Web Tutorials' /> 
<webctrl aaname='Colorker' parentid='main' tag='IMG' matching:aaname='fuzzy' fuzzylevel:aaname='0.4' />

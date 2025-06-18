# Studio IDE

The Studio IDE interface consists of a dedicated code editor, file tabs, and breadcrumbs for easy
            navigation. This layout enables you to manage your files, explore project structures,
            edit your code, version projects, run, and publish your automations.

# Code Editor

The code editor displays your current automation project, enables you to make changes
                to it, and provides highlighting for errors found inside your code. You can use the
                Code Editor like you would use any other code editor tool.

The Context Menu - when you right-click a line in your coded automation, the
                    Context Menu appears. You can also perform the actions inside the
                    Context Menu using keyboard shortcuts.

Field descriptions for the
                    Context MenuOptionKeyboard shortcutDescriptionQuick ActionsCtrl + .Refactor, generate, or modify code elements with an action
                                displayed automatically.An example of a quick action can be
                                        Introduce parameter for X → into new
                                overload.RenameF2Rename the code element that you have selected. The change
                                applies to all references of the element inside the entire
                                project.Go to DefinitionF12Navigate to the source of a type or member, and displays the
                                result in a new file tab.Go to ImplementationCtrl + F12Navigate to the implementation of a symbol:Interfaces - go to all implementors of the
                                        interface.Abstract
                                            methods - go to the concrete implementations of the
                                        method.Go to LineCtrl + GEnter the number of the line you want to move the cursor
                                to.Toggle BreakpointF9Set a breakpoint on the line you have selected. The breakpoint
                                appears as a red dot on the left side of the Code designer
                                panel.Find All ReferencesShift + F12Find where a particular code element is referenced throughout the
                                opened file.Format DocumentCtrl + K, Ctrl + DSet the appropriate indentation, spacing and wrapping.Show DocumentationF1Go to the corresponding documentation of the feature or coded
                                automation API.CommentCtrl + K, Ctrl + CComment out the line you have selected.UncommentCtrl + K, Ctrl + UUncomment the line you have selected.CutCtrl + XCut the line you have selected.CopyCtrl + CCopy the line you have selected.PasteCtrl + vPaste.DeleteDeleteDelete the line you have selected.Select AllCtrl + ASelect all lines in the file.

For keyboard shortcuts that you generally use in Studio, not specifically for coded
                automations, visit

# Keyboard shortcuts

You can expand or reduce your current code selection, using the following keyboard
                    shortcuts:Ctrl + Shift + Num+: Expand the current code selection to
                        the next larger syntax node, such as block, method, class, namespace, or
                        entire file.Ctrl + Shift + Num-: Reduce the current code selection to
                        the next smaller syntax node.

# Code Editor Settings

When you work with coded automations, you create and edit them in the dedicated code
                editor. To personalize the built-in Studio code editor, navigate to Settings,
                and select Code Editor.

The Code Editor settings apply only to coded
                automations.

![code_editor_studio_settings_24_10=GUID-6FA3B65D-5C5E-401E-B030-0D9040B21FA8=1=en=Default](/images/code_editor_studio_settings_24_10=GUID-6FA3B65D-5C5E-401E-B030-0D9040B21FA8=1=en=Default.png)

The table below describes each code editor setting.

SettingDescriptionFontChoose the font of the code.Font SizeSet the size of the font.Tab SizeSet the size of the tab.View WhitespaceHighlight the spaces created when you press
                                    Space on your keyboard.Highlight Current LineHighlight the line where you have your cursor on.Show Structure Guide LinesEnables dotted structure guide lines on your code, to identify
                                individual blocks.Show Error SquigglesShow a red squiggle that indicates a compiler error or
                                warning.Show Line NumbersShow the number of each line on the code that you're working
                                on.Auto Convert Tabs to SpacesCreate 4 spaces when using the Tab key.Show Selection MarginShow a margin next to the line of code that you're
                                editing.Show Selection MatchesFind and highlight all the matching strings for the range of
                                characters you selected.Highlight ReferencesHighlight references to the object your cursor is on. Only
                                objects that match the current context are highlighed.Enable Source DecompilationDecompile source code when you view the definition of an object
                                using Go to Definition. Enable this to navigate to the
                                definitions available in the CodedWorkflowBase
                                class. Visit  for more information.Enable Import CompletionAutomatically import the namespace that includes the selected
                                symbol, with IntelliSense.

# Tabs

The code editor opens files inside your project with tabs, in the editor's header.

When you open a file, a new tab is displayed for it.

![code_editor_tabs=GUID-623682E7-D22C-4314-85A5-179102A7A4AC=1=en=Default](/images/code_editor_tabs=GUID-623682E7-D22C-4314-85A5-179102A7A4AC=1=en=Default.png)

# Breadcrumbs

In the code editor header, you can navigate through classes and methods inside a file, using breadcrumbs.

![code_editor_breadcrumbs=GUID-BD01477F-A677-491A-84F8-6F6B727746BF=1=en=Default](/images/code_editor_breadcrumbs=GUID-BD01477F-A677-491A-84F8-6F6B727746BF=1=en=Default.png)

# Versioning

You can version Coded Automation projects like any other project in Studio. You can version
                projects when you publish them to Orchestrator, or if you use source control
                systems, such as GIT or SVN.Publish versioning - Projects in Studio can be versioned using either
                        the semantic or legacy versioning scheme. The semantic versioning scheme has
                        the format Major.Minor.Patch[-Suffix] and the legacy versioning
                        scheme has the format M.m.bbbb.rrrrr. The project's
                        semantic version can be modified from the project.json file
                        or the Publish window. The suggested version number in the
                            Publish window is generated based on the project's previous
                        versioning scheme. Visit  to
                        learn how to version your projects in Studio.Source control versioning - You can version your coded automations
                        projects using source control systems such as GIT, TFS, or SVN. Visit  to
                        learn how to version your projects using source control systems.

# Find and Replace

To open the Find and Replace dialog, use the keyboard shortcuts below:

* Ctrl + Shift + F - opens the Find and Replace dialog in the Find In Files tab.
* Ctrl + Shift + H - opens the Find and Replace dialog on the Replace in Files tab.

Find in Files

1. Type the characters you want to search in the Search bar.
2. Select one of the search options in the Search bar:Match caseMatch whole wordRegular Expression
3. From the Project dropdown select the place where to search for the characters:Project - search in current project.Opened Documents - search in the opened documents.Documents - search in all documents inside the project.
4. Click Open in Find Panel to open the search results in Studio.
5. Click Find Previous to find the previous result and Find Next to find the next result.

![find_and_replace_coded_automations=GUID-E711816B-5921-4045-B587-7A4405E28C01=1=en=Default](/images/find_and_replace_coded_automations=GUID-E711816B-5921-4045-B587-7A4405E28C01=1=en=Default.jpg)

Replace in Files

1. Type the characters you want to replace in the Search bar.
2. Type the characters that you want to replace with in the Replace bar.
3. Select one of the search options in the Search bar:Match caseMatch whole wordRegular Expression
4. From the Project dropdown select the place where to search for the characters:Project - search in current project.Opened Documents - search in the opened documents.Documents - search in all documents inside the project.
5. Click Open in Find Panel to open the search results in Studio.
6. Click Replace Next to replace the next iteration or Replace All to replace all iterations.

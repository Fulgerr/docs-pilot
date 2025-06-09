# List of extensions for Edge

The tables below show the history of extensions for Edge, with their IDs, the version of
            Studio that installs that extension version, and the extension type (MV2/MV3), for both
            online and offline installations.

# Extensions for online installation (from Edge
                Add-ons)

For more
                information, see Install from Group Policy -
                    Online.

Studio versionExtension IDNotesType24.10cdfjcmjmgdnojgaojdnefhjjpaijapciMoved execution to background ServiceWorker. This
                                removes the need to set
                                    DeveloperToolsAvailability=1 when the extension
                                is installed using Group Policy.MV323.10aolkfhjgbinoablafekggeglohbacjihAdded downloads permission. This is used by
                                Task Capture.MV323.4dknkgjgkdpkmddgdjlgdhfojlaehikmkAdded webRequest permission. This allows
                                    us to:Detect when
                                        the web page has finished executing all pending web
                                        request.Improve the
                                        functionality of activities such as Select Item.MV322.10>= 22.4.4>= 21.10.8>= 20.10.14>= 19.10.9kcgmcmhhfbcacnlnopghneecffhelmheAdded support for MV3.Can handle restricted access to the debugger API.MV3< 22.4.4bhchaenngmlcobfechfkikaofjlmejopAdded support for Edge running in App Mode.Added support for UIAutomation Portable.MV2< 21.10.821.6mbmcfnpgjlfabjgfghopojlpjjhfoinbAdded support for displaying extension errors using
                                extension icon banner.MV221.4hfmfadgldlfpdagjlglajpeppomelhnmFirst UiPath extension published on the Edge Web Store.Can be installed using Group Policy on machines not joined to
                                    Active Directory.MV2< 20.10.14< 19.10.9dkgencfabioofgdmhhjljpkbbchbikbhThis is the UiPath extension from the Chrome Web Store.Edge accepts extensions from both web stores.MV2

# Extensions for Group Policy offline
                installation (self-hosted extensions)

For more information, see Install from Group Policy -
                    Offline.

Studio versionExtension IDNotesType24.1023.1023.422.10>= 22.4.4>= 21.10.8>= 20.10.14>= 19.10.9ndmegdjihnhfmljjoaiimbipfhodnbgfAdded support for MV3.Can handle restricted access to the debugger API.Added support for Edge running in App Mode.Added webRequest  permission.Added downloads permission.MV3< 22.4.4< 21.10.8panimgephjhgjkfloepibbdmodkigmhk21.10 is the first version that added support
                                    for offline installation.MV2

# Extensions for Studio Web

Studio versionExtension IDNotesType24.10hmpkmollbbcoopahpbplbdaapacncbbcWorks together with UiPath Studio Web and UiPath
                                    Assistant/Robot on macOS.MV3

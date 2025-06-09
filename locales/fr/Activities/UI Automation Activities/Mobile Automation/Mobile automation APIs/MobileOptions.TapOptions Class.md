# MobileOptions.TapOptions Class

Use this class to further configure the  API.

# 



# Syntax

public class TapOptions : TargetOptions

The MobileOptions.TapOptions type exposes the following members.

# Constructors

public TapOptions()

MobileOptions.TapOptionsInitializes a new instance of the MobileOptions.TapOptions
                        class.

# Properties

tapOffsetSet the parameters of your target element.Position - Choose the default positioning of
                                the anchor point.Type
                                - Choose how to set the target coordinates. You can choose the
                                    following:PhysicalPixels - Use this option for
                                        workflows using a single device. Since the indication
                                        corresponds to actual pixels on the screen, it's different
                                        for each device.DeviceIndependentPixels - Use this
                                        option to run workflows on devices with similar density
                                        screens. Device-independent pixels means that you are
                                        indicating a target based on the pixel density of the
                                        selected screen area.OffsetX - Horizontal displacement of the
                                targeted area chosen for Type.OffsetY - Vertical displacement of the
                                targeted area chosen for Type.

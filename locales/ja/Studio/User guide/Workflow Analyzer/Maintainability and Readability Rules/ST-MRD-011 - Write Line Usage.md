# ST-MRD-011 - Write Line Usage

Rule ID: ST-MRD-011

Scope: Workflow

# Description

The rule checks the usage of Write Line activity.

# Recommendation

Write Line activity can be replaced with tracepoints during the debugging process. These activities should be removed before publishing. Consider also changing Write Line to Log Message if it is really needed for debugging purposes.

![201f7c2-write=GUID-B5837B72-A7EC-489F-87D0-8D2A141122BD=1=en=Default](/images/201f7c2-write=GUID-B5837B72-A7EC-489F-87D0-8D2A141122BD=1=en=Default.png)

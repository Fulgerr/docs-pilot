# Remove From Collection

UiPath.Activities.System.Collections.RemoveFromCollection

# Description

Removes the specified item from the specified collection.

# Project compatibility

Windows | Cross-platform

# Configuration

* Collection - The first collection from which to remove the item.
* Remove element - Specify how to indicate the item to be removed. Select one of the available options:Specific ItemBy indexAll Items
* Item - The item to be removed from the collection. This field is only available when Specific Item is selected above.
* Index - The index of the item to be removed from the collection. This field is only available when By index is selected above.Changing the data type of the collection after selecting it in the Collection field triggers a validation error. The collection with the new data type must be added again to the activity.

Additional options

Output

* Result - Reference to the resulting collection for use in other activities.

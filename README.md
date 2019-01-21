# File Browser Helper

The File Browser helper is an example of a helper that extends the DataView Tree behavior. It will list the folders and files of a root folder and allow the user to drill down into the contents of sub-folders.

This helper includes a behavior script that can be assigned to a DataView. When in use the behavior chain of the DataView group control is as follows:

File Browser DataView Tree Behavior > DataView Tree Behavior > DataView Behavior

The helper includes the row templates necessary for display files and folders.

Note that this helper requires the [DataView Tree helper](https://github.com/trevordevore/levurehelper-dataview_tree) and [DataView helper](https://github.com/trevordevore/levurehelper-dataview).

## Demo

The DataView Demo application includes an example of using this helper:

https://github.com/trevordevore/dataview_demo

## Including File Browser in your project
To include the File Browser Dataview control in your project (using git):
1. Submodule the File Browser Dataview control https://github.com/trevordevore/levurehelper-file_browser to app/helpers/file_browser
2. Submodule the DataView helper https://github.com/trevordevore/levurehelper-dataview to app/helpers/dataview
3. Submodule the DataView Tree helper https://github.com/trevordevore/levurehelper-dataview_tree to app/helpers/dataview-tree

## Creating

To create a File Browser DataView control call the command `createNewFileBrowserDataView` while working in the IDE. This will copy the "DataView Template" group from the "DataViewControlTemplate" stack that comes with the DataView helper onto the current card of the current stack. It will also set the necessary behaviors and properties in order or the File Browser to work.

## Usage

To display the contents of a folder set the `dvRootFolder` property.

Example: 

```
on mouseUp
	answer folder "Select folder to display:"
	if it is not empty then
		set the dvRootFolder of group "File Browser DataView" to it
		dispatch "RenderView" to group "File Browser DataView"
	end if
end mouseUp
```

## API

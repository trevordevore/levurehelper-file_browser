script "File Browser IDE Helper Library"
command createNewFileBrowserDataView pTargetCard
  local tControl, tTemplatesA

  if pTargetCard is empty then
    put the long id of the current card of this stack into pTargetCard
  end if

  copy group "DataView Template" of stack "DataViewControlTemplate" to pTargetCard
  put it into tControl
  set the name of tControl to "File Browser DataView"

  set the behavior of tControl to the long id of stack "File Browser DataView Tree Behavior"

  put the long id of group "File Row" of stack "File Browser Row Templates" into tTemplatesA["file"]
  put the long id of group "Folder Row" of stack "File Browser Row Templates" into tTemplatesA["folder"]
  set the viewProp["row style templates"] of tControl to tTemplatesA
  set the viewProp["fixed row height"] of tControl to true
  set the viewProp["row height"] of tControl to 24

  set the uCollapsedIconPath of tControl to "M595 422Q595 435 585 445L119 911Q109 921 96 921 83 921 73 911L23 861Q13 851 13 838 13 825 23 815L416 422 23 29Q13 19 13 6 13-7 23-17L73-67Q83-77 96-77 109-77 119-67L585 399Q595 409 595 422Z"
  set the uExpandedIconPath of tControl to "M1075-218Q1075-205 1065-195L599 271Q589 281 576 281 563 281 553 271L87-195Q77-205 77-218 77-231 87-241L137-291Q147-301 160-301 173-301 183-291L576 102 969-291Q979-301 992-301 1005-301 1015-291L1065-241Q1075-231 1075-218Z"

  select tControl
end createNewFileBrowserDataView

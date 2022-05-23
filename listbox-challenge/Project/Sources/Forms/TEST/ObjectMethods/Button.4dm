If (Form event code:C388=On Clicked:K2:4)
	
	FORM GET OBJECTS:C898($names)
	
	$columns:=New collection:C1472
	$objectNames:=New collection:C1472
	ARRAY TO COLLECTION:C1563($objectNames; $names)
	
	For each ($objectName; $objectNames)
		If (OBJECT Get type:C1300(*; $objectName)=Object type listbox:K79:8)
			LISTBOX GET OBJECTS:C1302(*; $objectName; $names)
			$listboxObjectNames:=New collection:C1472
			ARRAY TO COLLECTION:C1563($listboxObjectNames; $names)
			For each ($listboxObjectName; $listboxObjectNames)
				If (OBJECT Get type:C1300(*; $listboxObjectName)=Object type listbox column:K79:10)
					$columns.push(New object:C1471("listbox"; $objectName; "column"; $listboxObjectName))
				End if 
			End for each 
		End if 
	End for each 
	
End if 
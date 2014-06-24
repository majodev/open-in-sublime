-- script was opened by click in toolbar
on run
	tell application "Finder"
		if selection is {} then
			set finderSelection to folder of the front window as string
		else
			set finderSelection to selection as alias list
		end if
	end tell
	
	subl(finderSelection)
end run

-- script was drag-and-dropped onto
on open (theList)
	subl(theList)
end open

-- open in Sublime
on subl(listOfAliases)
	tell application "Sublime Text"
		open listOfAliases
		activate
	end tell
end subl
global frontApp, frontAppName, windowTitle

set windowTitle to ""
set frontAppName to ""
tell application "System Events"
    try
        set frontApp to first application process whose frontmost is true
        if displayed name of frontApp exists then
			set frontAppName to displayed name of frontApp
		else
			set frontAppName to name of frontApp
		end if
    on error
        set frontAppName to "-"
    end try

	# log (get properties of frontApp)

    try
        tell process frontAppName
            set firstWindow to (1st window whose value of attribute "AXMain" is true)
            tell firstWindow
                set firstWindowTitle to value of attribute "AXTitle"
                if firstWindowTitle exists then
                    set windowTitle to firstWindowTitle
                else
                    set windowTitle to ""
                end if
            end tell
        end tell
    on error
        set windowTitle to "-"
    end try
end tell

if windowTitle is "" then
    return "[" & frontAppName & "]"
else
    return "[" & frontAppName & "] " & windowTitle
end if
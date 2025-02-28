tell application "System Events"
    set frontApp to name of first application process whose frontmost is true
    set frontAppProc to first application process whose frontmost is true

    tell frontAppProc
        try
            tell value of attribute "AXFocusedUIElement" to perform action "AXShowMenu"
        on error
            log "No se puede realizar un clic derecho. Puede que la aplicaci—n no permita la interacci—n con el menœ contextual."
        end try
    end tell
end tell

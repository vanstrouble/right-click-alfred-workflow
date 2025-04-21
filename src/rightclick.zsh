#!/bin/zsh --no-rcs

osascript <<EOF
tell application "System Events"
    set frontProc to first application process whose frontmost is true
    tell frontProc
        try
            tell value of attribute "AXFocusedUIElement" to perform action "AXShowMenu"
        on error
            log "Cannot perform a right-click. The application may not allow interaction with the context menu."
        end try
    end tell
end tell
EOF

exit 0

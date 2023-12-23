#!/bin/bash

# Get the title of the frontmost application window
window_title=$(osascript /Users/robertbolender/code/activity-tracking/get-window-title.applescript)

# Log the title with timestamp to a file
echo "$(date '+%Y-%m-%d %H:%M:%S') - $window_title" >>~/log/active-window.log

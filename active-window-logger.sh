#!/bin/bash

# Get the parent directory of the current script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# Get the title of the frontmost application window
window_title=$(osascript "${script_dir}"/get-window-title.applescript 2>&1)

# Log the title with timestamp to a file
echo "$(date '+%Y-%m-%d %H:%M:%S') - $window_title" >>"${script_dir}"/active-window.log

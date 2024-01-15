#!/bin/bash

# Get the parent directory of the current script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# Get the title of the frontmost application window
window_title=$(osascript "${script_dir}"/get-window-title.applescript 2>&1)

monthstamp=$(date '+%Y-%m')
datestamp=$(date '+%Y-%m-%d')
timestamp=$(date '+%H:%M:%S')

# Log the title with timestamp to a file
log_dir="${script_dir}"/log/"${monthstamp}"
mkdir -p "${log_dir}"
printf "%s %s\t%s\n" "$datestamp" "$timestamp" "$window_title" >>"${log_dir}"/"${datestamp}".log

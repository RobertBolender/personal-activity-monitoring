# Personal Activity Monitoring

Name so chosen so that I can use the acronym PAM.

> PAM PAM PAM!
> -- Michael Scott

## Introduction

This is a simple script that logs the active window to a file.
It is intended to be used with a cron job to track activity over time.

Tested on macOS 14.2.1

Note that this script does not currently have any log rotation, so the log file will grow indefinitely.

## Suggested Usage

### Clone the repo

```bash
git clone
```

### Cron Job

Add a cron job to run the script every minute.

https://crontab.guru/#%2A_%2A_%2A_%2A_%2A

```bash
crontab -e
```

Add a line like the following, replacing the path with the path to the script.

```cron
* * * * * /Users/robertbolender/code/activity-tracking/active-window-logger.sh
```

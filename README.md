# Personal Activity Monitoring

Name so chosen so that I can use the acronym PAM.

> PAM PAM PAM!
> -- Michael Scott

## Introduction

This is a simple script that logs the active window to a file.
It is intended to be used with a cron job to track activity over time.

Tested on macOS 14.2.1

Logs are written to the `log/` directory in the same directory as the script, one file per day.
Note that the script will not ever delete old logs, so you will need to do that manually if you want to.

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

### Sample Output

```
2024-01-11 21:18:01 - [Code] .gitignore — activity-tracking
2024-01-11 21:19:00 - [Code] README.md — activity-tracking
2024-01-11 21:20:00 - [Arc] https%3A//crontab.guru/%23%2A_%2A_%2A_%2A_%2A
2024-01-11 21:21:01 - [Code] README.md — activity-tracking
2024-01-11 21:22:00 - [Code] active-window.log — activity-tracking
```

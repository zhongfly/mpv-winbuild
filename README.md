# mpv-build

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/zhongfly/mpv-build/MPV)
[![releases](https://img.shields.io/github/v/release/zhongfly/mpv-build)](https://github.com/zhongfly/mpv-build/releases/latest)
[![downloads](https://img.shields.io/github/downloads/zhongfly/mpv-build/total)](https://github.com/zhongfly/mpv-build/releases)

Use Github Action to build mpv-win with latest commit.

Based on <https://github.com/shinchiro/mpv-winbuild-cmake>.

## Auto-Builds

Builds run daily at 18:00 UTC (or GitHubs idea of that time) and are automatically released on success.

### Release Retention Policy

-   The last build of each month is kept for one years.
-   The last 14 daily builds are kept.

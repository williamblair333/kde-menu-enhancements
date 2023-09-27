# KDE 5 Dolphin Context Menu Open All Files In Desktop

A script to open all files in a specified directory with their associated applications based on file extensions or specific file names.

## Setup

1. Save the script as `open_files.sh` in the `/usr/local/bin/` directory (or another directory of your choice).
2. Ensure the script is executable by running: `chmod +x /usr/local/bin/open_files.sh`.

## Usage

This script is intended to be used with a custom desktop entry in the KDE context menu.

### Desktop Entry

Create a file named `OpenAllFiles.desktop` in `/usr/share/kservices5/ServiceMenus/` with the following content:

```bash
[Desktop Entry]
Type=Service
ServiceTypes=KonqPopupMenu/Plugin
X-KDE-ServiceTypes=KonqPopupMenu/Plugin
MimeType=inode/directory;application/octet-stream;
Name=Open All Files
Actions=openAllFiles;
X-KDE-Priority=TopLevel

[Desktop Action openAllFiles]
Name=Open All Files
Icon=system-run
Exec=/usr/local/bin/open_files.sh %F
```

### Script Configuration

Update the `APP_FILES` associative array in the `open_files.sh` script to add or change the applications and file patterns associated with them:

```bash
declare -A APP_FILES
APP_FILES=(
    [kate]="txt yml py sh pub Dockerfile md sql"
    [libreoffice]="docx odt xlsx xls"
    # ... add more applications and file patterns as needed
)

Each key represents an application, and each value is a space-separated list of file extensions or specific file names to be opened with that application.

## Execution

Right-click on a directory in Dolphin, and select 'Open All Files' from the context menu to open all files in that directory with their respective applications.

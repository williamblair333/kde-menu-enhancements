# KDE 5/6 Dolphin Context Menu Enhancements

Scripts to make your life a little easier and more productive.

## Setup

0. I'll eventually include a shell script to automate the cp job from repo directory to /usr/local/bin and then make executable.
1. cp dce*.sh to /usr/local/bin and then chmod +x dce*.sh.
2. cp *.desktop to /usr/share/kservices5/ServiceMenus/.
3. execute kbuildsycoca5 in a shell.  From the man page:  (kbuildsycoca5 - Rebuilds the KService desktop file system configuration cache)


## Usage

Open All Files:  In dce_open_all_files.sh, specify which file extensions you want to open and with which program to open them.  The menu will then open ALL files that it recognizes with the appropriate file extenstion using the specified executable.  Make all file extension and executable configurations at the APP_FILES declaration.

Paste As Link:  Right-click and click Copy on any single file or folder in Dolphin.  In the target folder, right-click and select Paste As Link.  You will be prompted to rename the file.  Choose yes to rename or no to leave as is.  You can do the same process for urls.

## Notes / Todo

Currently you can only select one item to copy and paste as a link. Selecting more than one seems to do no harm although you'll only get one created link.  I'd like to include other things like ftp, mailto:  etc. in the future.

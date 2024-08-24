#!/bin/bash

# Set this variable to "no" to disable the rename prompt
RENAME_PROMPT="yes"

TARGET="$(xclip -o -selection clipboard)"
TARGET="${TARGET#file://}"
DEST_DIR="$1"

# Function to check if a string is a valid URL
is_url() {
    echo "$1" | grep -qE "^(https?|ftp|file)://"
}

# Check if the target is a file, directory, or a URL
if [ -e "$TARGET" ] && { [ -f "$TARGET" ] || [ -d "$TARGET" ]; }; then
    LINK_NAME="$DEST_DIR/$(basename "$TARGET")"
    ln -s "$TARGET" "$LINK_NAME"
    echo "Linking $TARGET to $LINK_NAME" > /tmp/paste_link_debug.log
elif is_url "$TARGET"; then
    LINK_NAME="$DEST_DIR/New Link.desktop"
    echo "[Desktop Entry]" > "$LINK_NAME"
    echo "Type=Link" >> "$LINK_NAME"
    echo "URL=$TARGET" >> "$LINK_NAME"
    echo "Icon=network" >> "$LINK_NAME"
    echo "Name=Link to URL" >> "$LINK_NAME"
    echo "Created link to URL: $TARGET at $LINK_NAME" > /tmp/paste_link_debug.log
else
    echo "Clipboard does not contain a valid file, directory, or URL" > /tmp/paste_link_debug.log
fi

# Prompt for renaming if enabled
if [ "$RENAME_PROMPT" = "yes" ]; then
    if kdialog --yesno "Link created as: $LINK_NAME. Rename file?"; then
        NEW_NAME=$(kdialog --inputbox "Enter new name:" "$(basename "$LINK_NAME")")
        mv "$LINK_NAME" "$DEST_DIR/$NEW_NAME"
    fi
fi

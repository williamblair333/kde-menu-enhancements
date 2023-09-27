#!/bin/bash

DIRECTORY=$1

declare -A APP_FILES
APP_FILES=(
    [kate]="txt yml py sh pub Dockerfile"
    [libreoffice]="docx odt xlsx xls"
    # ... add more applications and file patterns as needed
)

process_files() {
    local APP=$1
    shift
    local PATTERNS=("$@")
    for PATTERN in "${PATTERNS[@]}"; do
        for FILE in "$DIRECTORY"/*.$PATTERN "$DIRECTORY"/$PATTERN; do
            if [[ -e $FILE ]]; then
                $APP "$FILE" &
            fi
        done
    done
}

for APP in "${!APP_FILES[@]}"; do
    PATTERNS=(${APP_FILES[$APP]})
    process_files $APP "${PATTERNS[@]}"
done

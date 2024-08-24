#!/bin/bash

DIRECTORY=$1

declare -A APP_FILES
APP_FILES=(
    [kate]="txt yml py sh pub Dockerfile md "
    [libreoffice]="docx odt xlsx xls"
    # ... add more applications and file patterns as needed
)

process_files() {
    local APP=$1
    shift
    local PATTERNS=("$@")
    local KATE_FILES=()
    for PATTERN in "${PATTERNS[@]}"; do
        for FILE in "$DIRECTORY"/*.$PATTERN "$DIRECTORY"/$PATTERN; do
            if [[ -e $FILE ]]; then
                if [[ $APP == "kate" ]]; then
                    KATE_FILES+=("$FILE")
                else
                    $APP "$FILE" &
                fi
            fi
        done
    done
    if [[ $APP == "kate" && ${#KATE_FILES[@]} -gt 0 ]]; then
        kate "${KATE_FILES[@]}" &
    fi
}

for APP in "${!APP_FILES[@]}"; do
    PATTERNS=(${APP_FILES[$APP]})
    process_files $APP "${PATTERNS[@]}"
done

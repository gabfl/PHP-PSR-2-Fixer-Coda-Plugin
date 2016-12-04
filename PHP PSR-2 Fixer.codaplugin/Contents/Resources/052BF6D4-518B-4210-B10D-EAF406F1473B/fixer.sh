#!/bin/bash

set -e

# Get vars
IN=`cat /dev/stdin`
TMP_FILE="psr2-fix-"`date | md5`
TMP_LOCATION="/tmp/"
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ${#IN} -eq 0 ]; then
        exit 0
else
    # Save stdin to temporary file
    echo "$IN" > $TMP_LOCATION$TMP_FILE;
    # echo $TMP_LOCATION"$TMP_FILE"

    # Fix psr-2 in temporary file
    php "$CURRENT_DIR""/Support Files/php-cs-fixer.phar" fix $TMP_LOCATION"$TMP_FILE" --rules=@PSR2,no_whitespace_in_blank_line,no_extra_consecutive_blank_lines --using-cache=no >> /dev/null

    # Return fixed file to stdout
    cat $TMP_LOCATION"$TMP_FILE"

    # Delete temporary file
    rm $TMP_LOCATION"$TMP_FILE"
fi

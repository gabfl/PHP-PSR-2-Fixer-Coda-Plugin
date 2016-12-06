#!/bin/bash

set -e

# Get vars
IN=`cat /dev/stdin`
TMP_DIR="/tmp/"
TMP_FILE="psr2-fix-"`date | md5`".php"
TMP_CACHE_FILE="$TMP_DIR""$TMP_FILE".php_cs.cache
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LOG_FILE=$TMP_DIR"PHP-PSR-2-Fixer.log"

if [ ${#IN} -eq 0 ]; then
    exit 0
else
    # Optionally add opening PHP tags
    if [ $(echo $IN | sed -e 's/^[[:space:]]*//' | head -c 1) == "<" ]
    then
        IN="
"$IN
        echo "* Don't add opening tag" >> $LOG_FILE
      else
        IN="<?php
"$IN
        echo "* Add opening tag" >> $LOG_FILE
    fi

    # Save stdin to temporary file
    echo "$IN" > $TMP_DIR$TMP_FILE;
    echo "* "$TMP_DIR"$TMP_FILE" >> $LOG_FILE

    # Copy phpcbf.phar
    cp "$CURRENT_DIR""/Support Files/phpcbf.phar" $TMP_DIR"phpcbf.phar"

    # Run phpcbf.phar from the temporary dir to allow temporary files
    cd $TMP_DIR
    
    # Because phpcbf.phar does not return a valid output
    set +e
    
    # Applying rules
    php $TMP_DIR"phpcbf.phar" --standard="$CURRENT_DIR""/Support Files/rules.xml" $TMP_DIR"$TMP_FILE" >> $LOG_FILE 2> $LOG_FILE
    
    # Back to normal
    set -e

    # Back to correct working directory
    cd "$CURRENT_DIR"
    
    # Return fixed file to stdout (remove first line artificially added)
    #cat $TMP_DIR"$TMP_FILE"
    tail -n +2 $TMP_DIR"$TMP_FILE" # Skip first line

    # Delete temporary files
    rm $TMP_DIR"$TMP_FILE" $TMP_DIR"phpcbf.phar" >> $LOG_FILE 2> $LOG_FILE
fi

echo "* success exit" >> $LOG_FILE

#!/bin/bash

set -e

# Get vars
ORIGIN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TMP_DIR="/tmp/"
LOG_FILE=$TMP_DIR"PHP-PSR-2-Fixer.log"

echo "Redirect to "$ORIGIN_DIR"/../052BF6D4-518B-4210-B10D-EAF406F1473B/fixer.sh" >> $LOG_FILE
source "$ORIGIN_DIR""/../052BF6D4-518B-4210-B10D-EAF406F1473B/fixer.sh"

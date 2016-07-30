#!/bin/bash
set -o pipefail

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..

receipt=$(cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f0-9' | head -c 32).${1##*.}
cp -v "$1" "$BASEDIR/receipts/$receipt"
echo $receipt

#!/bin/bash
set -o pipefail

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..

reciept=$(cat /dev/urandom | env LC_CTYPE=C tr -cd 'a-f0-9' | head -c 32).png
cp $1 $BASEDIR/reciepts/$reciept
echo $reciept

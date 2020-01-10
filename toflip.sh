#!/bin/bash

FILE_NUM=""
OPTIND=1
FROM=$(PWD)
TO='mallorta@flip.engr.oregonstate.edu:~/cs444'
while getopts "hn:" opt; do
    case "$opt" in
    h)  echo "run script to tranfer files to flip server with -n N to denote lab number"
		exit 0
		;;
    n)  FILE_NUM=$OPTARG
        ;;
    esac
done

echo "from: ${FROM}/lab${FILE_NUM}"
echo "to: ${TO}"

scp -r ${FROM}/lab${FILE_NUM} ${TO}

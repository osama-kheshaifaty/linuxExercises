#!/bin/bash


if ["$#" -ne 2]; then
    echo "Usage: $0 <dir> <n>" 1>&2
    exit 1
fi

dir="$1"
n="$2"

if [! -d "$dir"]; then
    echo "Error Directory '$dir' does not exist." 1>&2
    exit 1
fi


# find function
find "$dir" -type f -size +"$n"c -exec rm -f {} \;

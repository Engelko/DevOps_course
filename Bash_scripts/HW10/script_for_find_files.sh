#!/bin/bash



find $1  -type f -name "*.$2" -print0 | xargs --null ls -lh | grep -v '/\.'


# $1 the path to the file
# $2 file extension

#change script for find files in subdirectories

#!/bin/bash
# $1=path to scripts

SHELL_SCRIPTS=$(find "${1:-.}" -name '*.sh')

for var in $SHELL_SCRIPTS ; do
shellcheck "$var"
done


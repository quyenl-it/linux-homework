#!/bin/bash
# Script name: myargs
#
# Date: 2026
# Name: Quyen

# Script to test command line arguments
if [ $# == 0 ] ; then
echo "Usage: $(basename $0) arg1 arg2 ... argn" \
1>&2
exit 1
fi

echo "The name of this script is $0 ."
echo "The arguments are $* "
echo "The first argument is $1"
echo "The second argument is $2"
echo "The number of arguments is $#"

previous_args=$*
set niel khail nobo

echo "All the positional parameters are $*"
echo "The number of positional parameters is $#"
echo $previous_args

set --

echo "Current args after -- are : $*"

set $previous_args
echo $*








#!/bin/bash
# getopt-simple.sh
# Author: Chris Morgan
# Used in the ABS Guide with permission.
#
# While working for Spectrum Wireless I remember coworker 
# James Crippen saying getopt sucked and wrote code to
# replace it.  Spotted this getopt_simple() code online 
# and couldn't help but grab a copy.
#
# Links
# =====
# Example 10-5. Emulating getopt
# 10.1. Manipulating Strings
# http://tldp.org/LDP/abs/html/string-manipulation.html
#

getopt_simple()
{
    echo "getopt_simple()"
    echo "Parameters are '$*'"
    until [ -z "$1" ]
    do
      echo "Processing parameter of: '$1'"
      if [ ${1:0:1} = '/' ]
      then
          tmp=${1:1}               # Strip off leading '/' . . .
          parameter=${tmp%%=*}     # Extract name.
          value=${tmp##*=}         # Extract value.
          echo "Parameter: '$parameter', value: '$value'"
          eval $parameter=$value
      fi
      shift
    done
}

# Pass all options to getopt_simple().
getopt_simple $*

echo "test is '$test'"
echo "test2 is '$test2'"

exit 0  # See also, UseGetOpt.sh, a modified versio of this script.


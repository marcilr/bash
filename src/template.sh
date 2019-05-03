#!/bin/bash
# template.sh
# Created Fri May  3 10:07:14 AKDT 2019
# by Raymond E. Marcil <marcilr@gmail.com>
#
# Template bash script with common layout and functions.
# No need to reinvent the wheel every time.
#

# =============
# Configuration
# =============

#
# Enable/disable debugging
# Set 1 or higher for debugging output
#
DEBUG=1

# Configuration
AUTHOR="Raymond E. Marcil"

# Default to public email address
EMAIL="marcilr@gmail.com"


# ========
# Binaries
# ========
CAT=/bin/cat
GREP=/bin/grep
LS=/bin/ls
SED=/bin/sed


# =========
# Functions
# =========

#
# debug()
#
debug() {
  if [ "${DEBUG}" != "0" ]; then
    echo "debug() ${1}"
  fi

}   # debug()

#
# usage()
#
usage() {
    debug "usage() start"
    echo "template.sh"
    echo "Usage:"
    echo "-q | --quite     quite - suppress all ebugging output"
    echo "-u | --usage     display usage"
    echo "-v, -vv, -vvv    verbose, very verbose, extremely verbose"
    debug "usage() end"
}   # usage()


#
# process_cli_args()
#
# Process the command line  arguments:
#
# -q | --quite     This should superceed the -v|-vv|-vvv args
# -v | --verbose   verbose
# -vv              very verbose
# -vvv             extremely verbose
#
process_cli_args() {
    debug "process_cli_args() start"

    # Report name of script
    debug "process_cli_args() scriptName: ${scriptName}"

    # Report number of command line arguments
    debug "process_cli_args() argCount: ${argCount}"

    # Report cli arguments
    debug "process_cli_args() argArray: ${argArray}"

    # Loop over command line arguments
    for ARG in ${argArray}; do
        debug "process_cli_args() ARG: ${ARG}"
    done

    debug "process_cli_args() end"

}   # process_cli_args()



# ====
# Main
# ====
debug "main: *** START ***"

# Save name of script
scriptName=${0}

#
# Save array of command line arguments
# and argument count
#
argArray=${@}
argCount=("$#")

if [ $argCount == 0 ]; then
  usage
else
  # Report number of command line arguments
  debug "main: Got ${argCount} cli arguments"

  # Process command line arguments
  process_cli_args
fi


# *** Put main body here ***

debug "main: *** END ***"

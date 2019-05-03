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
# process_cli_args()
#
process_cli_args() {
    debug "process_cli_args() start"

    # Report name of script
    debug "process_cli_args() scriptName: ${scriptName}"

    # Report number of command line arguments
    debug "process_cli_args() argCount: ${argCount}"

    # Report cli arguments
    debug "process_cli_args() argsArray: ${argsArray}"

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
argsArray=${@}
argCount=("$#")

# Report number of command line arguments
debug "main: Got ${argCount} cli arguments"

# Process command line arguments
process_cli_args

# *** Put main body here ***

debug "main: *** END ***"

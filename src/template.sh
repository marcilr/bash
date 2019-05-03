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

    #debug("process_cli_args() This is the name of the script: ", sys.argv[0])
    #debug("process_cli_args() Number of arguments: ", len(sys.argv))
    #debug("process_cli_args() The arguments are: " , str(sys.argv))

    debug "process_cli_args() end"

}   # process_cli_args()



# ====
# Main
# ====
debug "main: *** START ***"

# Process command line arguments
process_cli_args

# *** Put main body here ***

debug "Main: *** END ***"

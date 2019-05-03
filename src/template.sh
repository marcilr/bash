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

}


# ====
# Main
# ====
debug "main: *** START ***"

# *** Put main body here ***

debug "Main: *** END ***"

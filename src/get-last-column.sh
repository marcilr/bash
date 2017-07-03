#!/bin/bash
# get-last-column.sh
# Created Mon Jul  3 09:10:49 AKDT 2017
# Copyright (C) 2017 by Raymond E. Marcil <marcilr@gmail.com>
#
# Links
# =====
# How to print only last column?
# https://unix.stackexchange.com/questions/17064/how-to-print-only-last-column


#
# It can even be done only with 'bash', without 'sed', 'awk' or 'perl':
# jfg956 - answered Jul 20 '11 at 18:14
# edited Mar 18 '13 at 11:50
#
echo -e 'one two three\nfour five six\nseven eight nine' |
  while IFS=" " read -r -a line; do
    nb=${#line[@]}
    echo ${line[$((nb - 1))]}
  done

#!/bin/bash
# analaysis.sh
# Created Thu Apr  2 10:10:08 AKDT 2009
# by Raymond E. Marcil
#
# Analysis of the /data/music directory.
#
# marcilr@boothite:~/Desktop$ echo $BAZ
# cat
#
# marcilr@boothite:~/Desktop$ echo "./" | awk -v pat="$BAZ" '{sub(/.\//,pat);print}'
# cat
#

# Directory to inspect.
TARGET=/data/music
OUTFILE=/data/music_index.txt

DIRCOUNT=0
MP3COUNT=0

echo "Analyzing: ${TARGET}"

pushd .

cd ${TARGET}

# Purge prior outfile
rm -f ${OUTFILE}

find . | while read LINE; do
  # echo ${LINE}

  if [ -d "${LINE}" ]; then
    echo "dir: ${LINE}"
    DIRCOUNT=$(( ${DIRCOUNT} + 1 ))
  else
    MP3=`echo ${LINE} | grep mp3`
    if [ ! -z "${MP3}" ]; then
      echo "mp3: ${LINE}"
      MP3COUNT=$(( ${MP3COUNT} + 1 ))

      # Replace ./ at beginning of filename with $TARGET + '/' base directory.
      FILE=`echo ${LINE} | awk -v pat="${TARGET}/" '{sub(/.\//,pat);print}'`
      echo "FILE: ${FILE}"

      #
      # Get MusicIP puid for mp3
      # genpuid is aliased with:
      #   alias genpuid='genpuid 092b8512193476e4f787529740a2f236'
      # 
      # NOTE: Embedding MusicIP key sync net getting pulled in from shell.
      #
      /home/marcilr/bin/genpuid 092b8512193476e4f787529740a2f236 -rmd=2 "${FILE}" >> ${OUTFILE}

    fi
  fi

  echo "DIRCOUNT: ${DIRCOUNT}"
  echo "MP3COUNT: ${MP3COUNT}"

done

popd


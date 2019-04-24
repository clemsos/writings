# This script was created to convert a directory full
# of markdown files into rst equivalents. It uses
# pandoc to do the conversion.
#
# 1. Install pandoc from http://johnmacfarlane.net/pandoc/
# 2. Copy this script into the directory containing the .md files
# 3. Ensure that the script has execute permissions
# 4. Run the script
#
# By default this will keep the original .md file

DEST_FOLDER=answers-md
FILES=answers-clean/*.html
COUNTER=1
LANGUAGE=fr

for f in $FILES
do
  extension="${f##*.}"
  filename="${f%.*}"

  basename=${filename##*/}
  date=${basename%% *}
  dest=$DEST_FOLDER/${basename/ /-}.md

  echo "Converting $f to $dest"

  `pandoc -f html \
    -t markdown \
    --metadata source=quora \
    --metadata date=$date \
    --metadata language=$LANGUAGE \
     -s "$f" \
    -o $dest`

  COUNTER=$[$COUNTER +1]

done

echo "$COUNTER files converted."

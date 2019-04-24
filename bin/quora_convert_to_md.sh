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

DEST_FOLDER=_quora
FILES=./raw/quora-answers/*.html
COUNTER=1
LANGUAGE=fr
AUTHOR="Clément-Renaud"

mkdir -p ${DEST_FOLDER}
for f in $FILES
do
  extension="${f##*.}"
  filename="${f%.*}"

  basename=${filename##*/}
  date=${basename%% *}
  dest=$DEST_FOLDER/${basename/ /-}.md

  # parse Quora URL
  original_url="https://quora.com/$(cut -d' ' -f2 <<< $basename)/answer/$AUTHOR"

  # clean up title
  title_tag="$(grep -o '<title.*title>\|^--.*' "$f")"
  clean_title=$(echo $title_tag | awk -F"answer to " '{print $2}' | awk -F"- Quora" '{print $1}')

  echo "Converting $f to $dest"

  `pandoc \
    -f html \
    -t markdown \
    --metadata source=quora \
    --metadata date=$date \
    --metadata original_url=$original_url \
    --metadata language=$LANGUAGE \
    --metadata title="$clean_title" \
    -s "$f" \
    -o $dest`

  COUNTER=$[$COUNTER +1]

done

echo "$COUNTER files converted."

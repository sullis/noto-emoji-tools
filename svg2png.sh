IMAGE_WIDTH=1024
IMAGE_HEIGHT=1024
for SVGFILE in *.svg;
do
  FILEBASE=${SVGFILE%.svg}
  PNG_FILENAME=${FILEBASE}-${IMAGE_WIDTH}.png
  rsvg-convert -w $IMAGE_WIDTH -h $IMAGE_HEIGHT $SVGFILE -o ${PNG_FILENAME}
  echo ${PNG_FILENAME}
done

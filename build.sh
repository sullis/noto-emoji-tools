SVG_REPO_DIR=./noto-emoji
if [ ! -d ${SVG_REPO_DIR} ]
then
  git clone --depth 1 https://github.com/googlefonts/noto-emoji.git
fi
image_sizes=(800)
for size in ${image_sizes}; do
  ./svg2png.sh ${size} ${SVG_REPO_DIR}/svg ./docs/assets/${size}
done

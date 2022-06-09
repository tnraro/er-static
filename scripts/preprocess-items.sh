mkdir -p ./dist/items
for item in tmp/items/*.png; do
  basename=$(basename $item)
  filename=${basename%.*}
  itemid=${filename#ItemIcon_}
  vips webpsave $item dist/items/$itemid.webp --preset icon --strip --effort 6
done


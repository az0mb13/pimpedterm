#!/bin/bash

flameshot gui --raw >> /home/zombie/Pictures/flameshot/screenshot.png
convert /home/zombie/Pictures/flameshot/screenshot.png \( +clone  -alpha extract -draw 'fill black polygon 0,0 0,5 5,0 fill white circle 5,5 5,0' \( +clone -flip \) -compose Multiply -composite \( +clone -flop \) -compose Multiply -composite \) -alpha off -compose CopyOpacity -composite /home/zombie/Pictures/flameshot/screenshot.png

convert /home/zombie/Pictures/flameshot/screenshot.png \( +clone -background black -shadow 75x10+0+0 \) +swap -bordercolor none -border 10 -background none -layers merge +repage /home/zombie/Pictures/flameshot/shadow.png
xclip -selection clipboard -t image/png -i /home/zombie/Pictures/flameshot/shadow.png
rm /home/zombie/Pictures/flameshot/screenshot.png /home/zombie/Pictures/flameshot/shadow.png

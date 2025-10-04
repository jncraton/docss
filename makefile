all: lint 330.png 1280.webp

lint:
	npx prettier --check .

format:
	npx prettier --write .

1280.webp:
	convert -size 1280x853 -define gradient:angle=225 gradient:#eeeeee-#cccccc -gravity center -pointsize 48 -fill black -annotate +0+0 "1280×853" $@

330.png:
	convert -size 330x200 -define gradient:angle=225 gradient:#eeeeee-#dddddd -attenuate 1.0 +noise Uniform -gravity center -pointsize 48 -fill black -annotate +0+0 "330×220" -posterize 16 $@

clean:
	rm -f *.png *.webp
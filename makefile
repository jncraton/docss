all: lint 330.png 1280.png

lint:
	npx prettier --check .

format:
	npx prettier --write .

1280.png:
	convert -size 1280x853 xc:#dddddd -gravity center -pointsize 48 -fill black -annotate +0+0 "1280×853" 1280.png

330.png:
	convert -size 330x200 xc:#dddddd -gravity center -pointsize 48 -fill black -annotate +0+0 "330×220" $@

clean:
	rm -f *.png
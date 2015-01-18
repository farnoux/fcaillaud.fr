jekyll:
	jekyll --server --auto

jekyll&:
	jekyll --server --auto &

#sass:
#	sass _sass/style.scss css/style.css --style=compressed

#sass-watch:
#	sass _sass/style.scss:css/style.css --watch --style=compressed

compass:
	compass compile --sass-dir=_sass --css-dir=css --output-style=compressed --force

wompass:
	compass watch --sass-dir=_sass --css-dir=css --output-style=expanded

dev: jekyll& wompass

resizesmall:
	convert images/${path}-big.jpg -resize 350x350^ images/${path}-small.jpg

resizebig:
	convert '$(image).jpg[600x600]' -set filename:f '$(image)-big.%e' '%[filename:f]'

resizeallbig:
	convert 'images/${path}/*.jpg[600x600]' -set filename:f 'images/${path}/%t-big.%e' '%[filename:f]'

resizecrop:
	convert $(image).jpg -resize 350x350^ -crop 350x350$(offset) $(image)-small.jpg

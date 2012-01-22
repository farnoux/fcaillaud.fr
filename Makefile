jekyll:
	jekyll --server --auto

jekyll&:
	jekyll --server --auto &

#sass:
#	sass _sass/style.scss css/style.css --style=compressed

#sass-watch:
#	sass _sass/style.scss:css/style.css --watch --style=compressed

compass:
	compass compile --sass-dir=_sass --css-dir=css --output-style=compressed

wompass:
	compass watch --sass-dir=_sass --css-dir=css --output-style=expanded

dev: jekyll& wompass

resize:
	convert images/$(image).jpg -resize 350x350^ images/$(image)-small.jpg

resizecrop:
	convert images/$(image).jpg -resize 350x350^ -crop 350x350$(offset) images/$(image)-small.jpg
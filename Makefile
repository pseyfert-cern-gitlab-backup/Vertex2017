all:
	rm -f pseyfert.aux pseyfert.toc pseyfert.snm
	xelatex pseyfert.tex
	xelatex pseyfert.tex
	xelatex pseyfert.tex

quick:
	xelatex pseyfert.tex

clean:
	rm -rf pseyfert.aux pseyfert.log pseyfert.nav pseyfert.out pseyfert.snm pseyfert.toc

# from https://stackoverflow.com/a/29308524
publish:
	git branch -D Vertex2017
	git subtree split --prefix=2017-09-15-Vertex -b Vertex2017
	git push VERTEX2017 Vertex2017:Vertex2017 -f

printviews:
	pdfnup --nup '2x2' pseyfert.pdf
	gs -sOutputFile=pseyfert-nup-gray.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH pseyfert-nup.pdf

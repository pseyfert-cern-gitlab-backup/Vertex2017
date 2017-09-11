TOPLEVEL=$(shell git rev-parse --show-toplevel)

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
	git branch -D Vertex2017 || true
	cd ${TOPLEVEL} ; git subtree split --prefix=2017-09-15-Vertex -b Vertex2017
	git push VERTEX2017 Vertex2017:Vertex2017 -f

printviews:
	pdfnup --nup '2x2' pseyfert.pdf
	gs -sOutputFile=pseyfert-nup-gray.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH pseyfert-nup.pdf


# Makefile for pseyfert/Vertex2017.
# Copyright (C) 2017  Paul Seyfert <pseyfert@cern.ch>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

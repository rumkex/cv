%.pdf: %.tex
	latexmk \
        -xelatex \
		-shell-escape \
		-synctex=1 \
		-interaction=nonstopmode \
		-file-line-error \
		$<

.PHONY: all

all: cv-eng.pdf cv-rus.pdf

.PHONY: chapters clean
.RECIPEPREFIX = >

CONTENT_FILES = $(shell find . -mindepth 2 -iname '*.tex')
QTIKZ_FILES   = $(shell find . -mindepth 2 -iname '*.qtikz')

CT.pdf: ./CT.tex \
        ./structure.tex \
        ./macros.tex \
        ./chapters.tex \
        ./biblio.bib \
        ./title.tex \
	./cc.tex \
        $(CONTENT_FILES) \
        $(QTIKZ_FILES)
> @latexmk -lualatex $<

clean:
> @latexmk -c


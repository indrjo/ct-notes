.PHONY: clean
.RECIPEPREFIX = >

CONTENT_FILES = $(shell find . -mindepth 2 -iname '*.tex')
QTIKZ_FILES   = $(shell find . -mindepth 2 -iname '*.qtikz')

BOOK_DEPENDS = ./CT.tex \
               ./book-structure.tex \
               ./macros.tex \
               ./chapters.tex \
               ./biblio.bib \
               ./cc.tex \
               $(CONTENT_FILES) \
               $(QTIKZ_FILES)

CT.pdf: $(BOOK_DEPENDS)
> @latexmk -lualatex $<

clean:
> @latexmk -c
> @rm -v *-xr.tex
> @find . -name 'thechapter.tex' -exec sh -c 'rm `dirname "{}"`.tex' \;


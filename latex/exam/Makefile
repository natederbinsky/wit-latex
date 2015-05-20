
FILE = exam

LATEX = pdflatex -halt-on-error -no-shell-escape
UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Linux)
	OPEN = xdg-open
endif
ifeq ($(UNAME_S),Darwin)
	OPEN = open
endif

all: $(FILE).pdf

$(FILE).pdf: Makefile $(FILE).tex
	$(LATEX) $(FILE)
	$(OPEN) $(FILE).pdf

clean:
	rm -f $(FILE).pdf *.4ct *.4og *.4tc *.aux *.bbl *.blg *.doc *.dvi *.idv *.lg *.log *.nav *.odt *.out *.snm *.tmp *.toc *.vrb *.xref *.lof *.lot *.loa *.ps *.spl *.gz

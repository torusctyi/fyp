# Makefile for fyp

# Cleaning
clean.auxillary:
	rm -f *.aux *.log

clean.pdf:
	rm -f *.pdf

# Building
fyp.pdf: fyp.latex
	pdflatex -halt-on-error fyp.latex

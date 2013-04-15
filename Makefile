# Building

all:fyp 

PLOT_PDFS = ramp_function.pdf

ramp_function.pdf: ramp_function.r
	Rscript ramp_function.r

fyp.dvi: fyp.latex  $(PLOT_PDFS)
	latex -halt-on-error fyp.latex
	bibtex fyp
	latex fyp.latex
	latex fyp.latex
	
fyp.pdf: fyp.latex $(PLOT_PDFS)
	pdflatex -halt-on-error fyp.latex
	bibtex fyp
	pdflatex fyp.latex
	pdflatex fyp.latex	
	
fyp: fyp.pdf

#cleaning
clean.auxillary:
	rm -f *.aux *.log

clean.dvi:
	rm -f *.dvi
clean.pdf:
	rm -f *.pdf

clean: clean.auxillary clean.pdf clean.dvi


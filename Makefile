# Building

all: fyp.pdf

PLOT_PDFS = ramp_function.pdf

ramp_function.pdf: ramp_function.r
	Rscript ramp_function.r

fyp.dvi: fyp.latex  $(PLOT_PDFS)
	latex -halt-on-error fyp.latex
	bibtex fyp
	latex fyp.latex
	latex fyp.latex
	
fyp.pdf: fyp.dvi $(PLOT_PDFS)
	dvipdfm fyp.dvi
	
fyp: fyp.pdf

#cleaning
clean.auxillary:
	rm -f *.aux *.log

clean.dvi:
	rm -f *.dvi
clean.pdf:
	rm -f *.pdf

clean: clean.auxillary clean.pdf


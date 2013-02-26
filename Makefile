# Building

all: fyp.pdf

PLOT_PDFS = ramp_function.pdf

ramp_function.pdf: ramp_function.r
	Rscript ramp_function.r

fyp.pdf: fyp.latex $(PLOT_PDFS)
	pdflatex -halt-on-error fyp.latex

#cleaning
clean.auxillary:
	rm -f *.aux *.log

clean.pdf:
	rm -f *.pdf

clean: clean.auxillary clean.pdf


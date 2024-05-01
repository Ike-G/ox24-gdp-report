TARGET = main
LATEX = latex
BIBTEX = bibtex

all: $(TARGET).pdf

$(TARGET).dvi: $(TARGET).tex $(TARGET).bib
	-$(LATEX) $(TARGET).tex
	-$(BIBTEX) $(TARGET)
	-$(LATEX) $(TARGET).tex
	-$(LATEX) $(TARGET).tex

$(TARGET).ps: $(TARGET).dvi 
	dvips -t letter -Ppdf -G0 -o $(TARGET).ps $(TARGET).dvi 

$(TARGET).pdf: $(TARGET).ps 
	ps2pdf -sPAPERSIZE=letter  -dCompatibilityLevel=1.4 -dSubsetFonts=true -dEmbedAllFonts=true  -dPDFSETTINGS=/prepress $(TARGET).ps $(TARGET).pdf 

clean:
	rm -f $(TARGET).aux $(TARGET).bbl $(TARGET).blg $(TARGET).log $(TARGET).out $(TARGET).pdf $(TARGET).dvi  $(TARGET).ps $(TARGET).xmpdata

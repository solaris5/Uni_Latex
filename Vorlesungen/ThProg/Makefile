all: Konfluenz.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf Polynomordnung.pdf SystemF.pdf PumpingLemma.pdf

continuous: $(PDF).continuous 

clean: cleanup all

cleanup: 
	-rm -f *.aux *.fdb_latexmk *.fls *.log *.pdf
single: all
	-pdftk Polynomordnung.pdf Konfluenz.pdf SystemF.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf PumpingLemma.pdf cat output ThProgCheatsheet.pdf
	

%.continuous: %.pdf
	latexmk -quiet -jobname=$(@:%.continuous=%) -pvc -pdf $(@:%.continuous=%).tex > "\dev0"

%.pdf: %.tex
	latexmk -quiet -jobname=$(@:%.pdf=%) -pdf $<

.PHONY: all continuous cleanup single

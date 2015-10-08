all: Konfluenz.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf Polynomordnung.pdf SystemF.pdf

continuous: $(PDF).continuous 

cleanup: 
	-rm -f *.aux *.fdb_latexmk *.fls *.log
single: all
	-pdftk Polynomordnung.pdf Konfluenz.pdf SystemF.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf cat output newfile.pdf
	

%.continuous: %.pdf
	latexmk -jobname=$(@:%.continuous=%) -pvc -pdf $(@:%.continuous=%).tex

%.pdf: %.tex
	latexmk -jobname=$(@:%.pdf=%) -pdf $<

.PHONY: all continuous cleanup single

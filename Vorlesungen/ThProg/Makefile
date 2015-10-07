all: Konfluenz.pdf Koinduktion_reduktion.pdf Struckturelle_Induktion.pdf Polynomordnung.pdf SystemF.pdf

continuous: $(PDF).continuous 

%.continuous: %.pdf
	latexmk -jobname=$(@:%.continuous=%) -pvc -pdf $(@:%.continuous=%).tex

%.pdf: %.tex
	latexmk -jobname=$(@:%.pdf=%) -pdf $<

.PHONY: all continuous

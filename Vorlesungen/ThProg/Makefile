all: Konfluenz.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf Polynomordnung.pdf SystemF.pdf PumpingLemma.pdf

continuous: $(PDF).continuous

clean: cleanup rmpdf all

rmpdf:
	@-rm -f *.pdf 	

cleanup: 
	@-rm -f *.aux *.fdb_latexmk *.fls *.log

single: all
	@-pdfunite Polynomordnung.pdf Konfluenz.pdf SystemF.pdf Koinduktion_reduktion.pdf Strukturelle_Induktion.pdf PumpingLemma.pdf ThProgCheatsheet.pdf
	

%.continuous: %.pdf
	@latexmk -quiet -jobname=$(@:%.continuous=%) -pvc -pdf $(@:%.continuous=%).tex

%.pdf: %.tex
	@latexmk -quiet -jobname=$(@:%.pdf=%) -pdf -halt-on-error $< 1>/dev/null

.PHONY: all continuous cleanup single clean rmpdf

# Nur idioten benutzen die SampleCheatsheets! Sie sind zur Übersicht und entsprechen mitunter nicht dam aktuelle Stand!

# Richtige Benutzung:

## Repository kopieren

    $ git clone https://github.com/FAUSheppy/Uni_Latex
    $ cd Uni_Latex

## Repository updaten

    $ git pull

## PDF bauen

Vor dem Bauen das Repository updaten.

    $ make

# Die Makefiles
`make/make all` -> Standard
`make continous` -> compeliert immer neu wenn sich etwas geändert hat
`make clean` (nur ThProg) -> löscht alle Builddateien und PDFs und compeliert neu
`make cleanup` (nur ThProg) -> Löscht alle Build-Dateien aber nicht die PDFs
`make single` (nur ThProg) -> Kompeliert die PDFs und fügt sie zu einem einzelnen zusammen

Das Makefile in ThProg läuft außerdem ultra-quite in nicht-continous modes. Beachtet das wenn ihr zum debuggen nicht 'make continous' verwendet.


# Ich habe einen Fehler gefunden!
-> macht eine Issue auf
-> schreibt mir im IRC (Sheppy)
-> macht einen Pullrequest (bestes)

Schreibzugriff auf dieses Repro haben außerdem nudelsalat und greeny.


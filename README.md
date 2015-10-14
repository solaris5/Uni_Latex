#Nur idioten benutzen die SampleCheatsheets! Sie sind zur Übersicht und entsprechen mitunter nicht dam aktuelle Stand!

#Richtige Benutzung:
'git clone https://github.com/FAUSheppy/Uni_Latex'\n
'git pull' (innerhalbt des Ordners der durch Git-Clone entstanden ist) \n
...um das Repro zu updaten (was ihr machen solltet bevor ihr die Makefiles verwendet!)\n
\n
#Die Makefiles:
\n make/make all -> Standard
\n make continous -> compeliert immer neu wenn sich etwas geändert hat
\n make clean (nur ThProg) -> löscht alle Builddateien und PDFs und compeliert neu
\n make cleanup (nur ThProg) -> Löscht alle Build-Dateien aber nicht die PDFs
\n make single (nur ThProg) -> Kompeliert die PDFs und fügt sie zu einem einzelnen zusammen
\n
\n Das Makefile in ThProg läuft außerdem ultra-quite in nicht-continous modes. Beachtet das wenn ihr zum debuggen nicht 'make continous' verwendet.
\n \n 
#Ich habe einen Fehler gefunden!
\n-> macht eine Issue auf
\n-> schreibt mir im IRC (Sheppy)
\n-> macht einen Pullrequest (bestes)
\n\n
Schreibzugriff auf dieses Repro haben außerdem nudelsalat und greeny.
\n

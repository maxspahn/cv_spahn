all:
	pdflatex -output-directory=auxFile cv_spahn.tex
	mv auxFile/*.pdf .

clear:
	rm auxFile/*

show:
	make all;
	xdg-open cv_spahn.pdf &

short:
	make show;
	sleep 7;
	killall okular

setg:
	sed -i '1s/english/ngerman/' cv_spahn.tex;
	make clear

sete:
	sed -i '1s/ngerman/english/' cv_spahn.tex;
	make clear

allE:
	make sete;
	make show;
	cp cv_spahn.pdf cv_spahn_english.pdf

allG:
	make setg;
	make show;
	cp cv_spahn.pdf cv_spahn_german.pdf

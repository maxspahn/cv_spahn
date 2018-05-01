all:
	pdflatex -output-directory=auxFile cv_spahn.tex
	mv auxFile/*.pdf .

clear:
	rm auxFile/*

show:
	make all;
	gnome-open cv_spahn.pdf &

short:
	make show;
	sleep 7;
	killall okular


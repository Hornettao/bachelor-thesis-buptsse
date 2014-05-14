
all: main.pdf

main.pdf: data/*.tex main.tex BUPTthesisBachelor.sty
	-xelatex main.tex
	-bibtex main
	-xelatex main
	-xelatex main

clean:
	find | grep 'main\....' | grep -v '\.tex$$' | xargs rm -f
	find | grep '\.aux$$' | xargs rm -f




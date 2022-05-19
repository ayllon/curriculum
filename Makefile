all: aalvarez.pdf

aalvarez.pdf: curriculum.tex
	pdflatex -jobname=$(firstword $(subst ., , $@)) $^
	pdflatex -jobname=$(firstword $(subst ., , $@)) $^

clean:
	rm -fv *.aux *.log *.out


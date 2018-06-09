presentation:
	xelatex presentation.tex
	-bibtex  presentation.aux
	xelatex presentation.tex
	xelatex presentation.tex
presentationIEEE:
	xelatex presentationIEEE.tex
	-bibtex  presentationIEEE.aux
	xelatex presentationIEEE.tex
	xelatex presentationIEEE.tex
clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.xml *.snm *.bcf
depclean: clean
	rm -rf *.pdf

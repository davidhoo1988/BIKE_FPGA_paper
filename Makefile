NAME = paper

$(NAME).pdf: *.tex *.bib  
	pdflatex --jobname $(NAME) llncs_format_paper.tex
	bibtex $(NAME)
	pdflatex --jobname $(NAME) llncs_format_paper.tex
	pdflatex --jobname $(NAME) llncs_format_paper.tex

quick:
	pdflatex --jobname $(NAME) llncs_format_paper.tex

#clean-tex:
#	latexpand --empty-comments --keep-includes *.tex | sed '/^\s*%/d' | cat -s - | sponge xmss.tex

clean:
	rm *.aux $(NAME).bbl $(NAME).blg $(NAME).log $(NAME).out $(NAME).pdf

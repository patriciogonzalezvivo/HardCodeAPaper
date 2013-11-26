tex	 	= 	template.tex
body 	=  	body.tex
md 		=  	$(body:.tex=.md)
bib 	=  	bibliography.bib
aux 	= 	template.aux

default: clean resize_imgs md2tex tex2pdf clean

clean: 
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.out *~ $(body)

resize_imgs:
	mogrify -resize 324 images/*.png

md2tex: 
	pandoc --from markdown --to latex -o $(body) $(md)	

tex2pdf: 
	pdflatex $(tex) && bibtex $(aux) && pdflatex $(tex) && pdflatex $(tex)
	mv template.pdf paper.pdf
	rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg	\
				*.inx *.toc *.out *~ $(body)
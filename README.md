# HardCode your Academic Papers
Write your paper in MarkDown and exported to correct Chicago Style PDFs. 
Thanks to [Lane Harrison](http://codementum.org/) for the original [ChiMarkdown Script](https://github.com/codementum/chi_markdown)

## Instalation

### Linux
- In console do:

		sudo apt-get install texlive pandoc ImageMagick

###  OSX
1. Download and install the full [MacTex](http://tug.org/mactex/) package (approximately 2.3G	- 30 May 2013) for LaTeX support. If you have [macPort](http://www.macports.org/) you can do it by:

		sudo port install texlive


2. Download and install [PanDoc](http://johnmacfarlane.net/pandoc/installing.html). Or with [macPort](http://www.macports.org/):
	
		sudo port install pandoc

3. Download and install [ImageMagic](http://www.imagemagick.org/script/binary-releases.php). Or:

		sudo port install ImageMagick

# Use

- Write your paper/article on the body.md
- Edit your **personal information** in ```author.tex```
- Edit the **title**, **abstract**, **keywords**, **category** and **terms** ```header.tex``` with the title of the paper
- **Images** should be store as ```.png``` files inside the ```images/``` folders. And embebed in the text using regular MarkDown expression. **Warning: Don' t put originals in this folder**. An ImageMagic routine will resize it to fit in the PDF.
- **Bibliography** should be add in the ```bibliography.bib```. You can use [CiteSeer](http://citeseer.uark.edu:8080/citeseerx/viewdoc/summary?doi=10.1.1.60.411) and [Zotero](http://www.zotero.org/) to get the right BibTeX notation for referenced Papers and Books. 

Then to cite use ```\cite{ [name_of_the_reference] }```. Por example to cite this paper:

	@MISC{Art03towardsa,
  	  author = {For Digital Art and Greg Turner and Ernest 	Edmonds},
    	title = {Towards a Supportive Technological Environment for Digital Art},
    	year = {2003}
	}

You should write ```\cite{Art03towardsa}``` in your Body MarkDown file
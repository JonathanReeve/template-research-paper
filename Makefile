default: my-essay.html

%.html: %.md
	pandoc --citeproc --template=templates/template.html -o $@ $<

%.pdf: %.md
	pandoc --citeproc --template=templates/template.tex -o $@ $<

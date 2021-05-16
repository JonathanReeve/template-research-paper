default: my-essay.html

%.html: %.md
	pandoc --citeproc --standalone --template=templates/template.html -o $@ $<

%.pdf: %.md
	pandoc --citeproc --standalone --template=templates/template.tex -o $@ $<

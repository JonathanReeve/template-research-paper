default: my-essay.html

%.html: %.md
	pandoc --citeproc -o $@ $<

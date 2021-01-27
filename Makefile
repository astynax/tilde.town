all:
	echo "Make what?"

.PHONY: site
site: public_html/index.html

public_html/%.html: site/%.rkt
	racket $< > $@

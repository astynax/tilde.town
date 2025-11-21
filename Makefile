.PHONY: all
all:
	echo "Make what?"

.PHONY: site
site: publish_html/index.html publish_html/blog
	true

publish_html/index.html:
	raco pollen publish site public_html

publish_html/blog:
	ln -s $$HOME/.ttbp/www public_html/blog

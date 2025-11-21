.PHONY: all
all:
	echo "Make what?"

.PHONY: site
site: publish_html/index.html publish_html/blog
	echo "Done!"

publish_html/index.html: site/compiled
	raco pollen publish site public_html

site/compiled:
	raco pollen render site

publish_html/blog:
	ln -s $$HOME/.ttbp/www public_html/blog

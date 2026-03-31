SITE_NAME = dontwalkaway.nekoweb.org


.PHONY: site zip

site: public/*

zip: $(SITE_NAME).zip

$(SITE_NAME).zip: public/*
	ln -s public $(SITE_NAME)
	zip -r $(SITE_NAME).zip $(SITE_NAME)
	rm $(SITE_NAME)

public/index.html: src/index.m4 src/templates/*
	m4 src/templates/conf.m4 src/index.m4 > public/index.html

public/style.css: src/style.css
	cp src/style.css public/style.css


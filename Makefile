SITE_NAME = dontwalkaway.nekoweb.org


.PHONY: site zip

site: $(patsubst src/%.m4, public/%.html, public/style.css $(wildcard src/*.m4)) public/style.css public/assets

zip: $(SITE_NAME).zip

$(SITE_NAME).zip: site
	ln -s public $(SITE_NAME)
	zip -r $(SITE_NAME).zip $(SITE_NAME)
	rm $(SITE_NAME)

public/%.html: src/%.m4 $(wildcard src/templates/*.m4)
	m4 -P src/templates/conf.m4 $< > $@

public/style.css: src/style.css
	cp src/style.css public/style.css

public/assets: $(wildcard src/assets/*)
	rm -rf public/assets
	cp -r src/assets public/assets


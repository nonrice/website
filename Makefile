SITE_NAME = dontwalkaway.nekoweb.org

ifeq ($(shell uname), Darwin)
    M4 := $(shell brew --prefix m4 2>/dev/null)/bin/m4
else
    M4 := m4
endif

.PHONY: site zip

site: $(patsubst src/%.m4, public/%.html, $(wildcard src/*.m4)) public/style.css public/elements.css public/assets



zip: $(SITE_NAME).zip

$(SITE_NAME).zip: site
	ln -s public $(SITE_NAME)
	zip -r $(SITE_NAME).zip $(SITE_NAME)
	rm $(SITE_NAME)

public:
	mkdir -p public

public/%.html: src/%.m4 $(wildcard src/templates/*.m4) | public
	$(M4) -P src/templates/conf.m4 $< > $@

public/blog.html: src/blog/contents2026.m4

public/style.css: src/style.css | public
	cp src/style.css public/style.css

public/elements.css: src/elements.css | public
	cp src/elements.css public/elements.css

public/assets: $(wildcard src/assets/*) | public
	rm -rf public/assets
	cp -r src/assets public/assets


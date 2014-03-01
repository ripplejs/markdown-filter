
build: components lib/index.js
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

test: build
	mocha-phantomjs test/index.html

.PHONY: clean test

XYZ = node_modules/.bin/xyz --repo git@github.com:ramda/ramda.git --script scripts/prepublish


dist/aa-thrush.js:
	npm run build:umd

dist/aa-thrush.min.js:
	npm run build:umd:min


.PHONY: clean
clean:
	rm -f -- dist/aa-thrush.js


.PHONY: lint
lint:


.PHONY: release-major release-minor release-patch
release-major release-minor release-patch:
	@$(XYZ) --increment $(@:release-%=%)


.PHONY: setup
setup:
	npm install


.PHONY: test
test: dist/aa-thrush.js
	npm test

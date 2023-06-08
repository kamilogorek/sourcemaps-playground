.PHONY: install build webpack rollup vite esbuild rspack

build: install webpack rollup vite esbuild rspack json

install:
	npm install
webpack:
	@echo "======== Webpack ========"
	npx webpack
rollup:
	@echo "======== Rollup ========"
	npx rollup -c
vite:
	@echo "======== Vite ========"
	npx vite build
esbuild:
	@echo "======== Esbuild ========"
	npx esbuild src/index.js --bundle --minify --sourcemap --outfile=dist/esbuild.bundle.js
rspack:
	@echo "======== Rspack ========"
	npx rspack
json:
	for f in dist/*.js.map; do cp "$$f" "$${f%.js.map}.json"; done
	npx prettier dist/*.json --write

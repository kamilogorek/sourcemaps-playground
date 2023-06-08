# Source Maps Playground

Repository contains basic setup for the most commonly used bundlers, configured to produce a corresponding Source Maps files.
It can be used to compare and verify the implementation of Source Maps specification

Includes:
- Webpack v5.86
- Rollup v3.24
- Vite v4.3
- Esbuild v0.17
- Rspack v0.2

To install all dependencies: `make install`
To rebuild everything: `make`
To rebuild separate bundlers: `make webpack` (or other bundler name)

If `make` is not available, take a look at `Makefile`, and use corresponding scripts directly.

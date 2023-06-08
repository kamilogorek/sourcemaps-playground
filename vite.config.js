const path = require('path');

module.exports = {
  mode: "production",
  build: {
    lib: {
      entry: path.resolve(__dirname, 'src/index.js'),
      name: 'vite',
      fileName: () => 'vite.bundle.js',
      formats: ['iife']
    },
    emptyOutDir: false,
    sourcemap: true
  }
}

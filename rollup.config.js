const terser = require('@rollup/plugin-terser');

module.exports = {
  input: 'src/index.js',
  output: {
    file: 'dist/rollup.bundle.js',
    format: 'iife',
    sourcemap: true
  },
  plugins: [
    terser()
  ]
};

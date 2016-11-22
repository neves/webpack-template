webpack = require 'webpack'

module.exports =
  plugins: [
    new webpack.DefinePlugin
      'process.env.VERSION': JSON.stringify(require('../../package.json').version)
  ]

ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
  dependencies: [
    'css-loader@^0.26.0',
    'style-loader@^0.13.1'
  ]
  module:
    rules: [
      test: /\.css$/
      loader: ExtractTextPlugin.extract
        fallbackLoader: 'style-loader'
        loader: 'css-loader'
    ]
  plugins: [
    new ExtractTextPlugin
      filename: '[name].[contenthash:7].css'
      allChunks: true
  ]

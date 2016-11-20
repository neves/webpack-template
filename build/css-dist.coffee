ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports =
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

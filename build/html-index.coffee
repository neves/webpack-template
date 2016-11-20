HtmlWebpackPlugin = require 'html-webpack-plugin'

module.exports = (webpackConfig) ->
  dependencies: ['html-webpack-plugin@^2.24.1']
  plugins: [
    new HtmlWebpackPlugin
      chunksSortMode: 'dependency'
      xhtml: true
      template: 'index.html'
  ]

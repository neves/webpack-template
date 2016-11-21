ExtractTextPlugin = require 'extract-text-webpack-plugin'
DEVELOPMENT = process.env.NODE_ENV is 'development'

module.exports = ({devtool}) ->
  dependencies: [
    'css-loader@^0.26.0',
    'style-loader@^0.13.1'
  ]

  module:
    rules: [
      test: /\.css$/
      loader: ExtractTextPlugin.extract
        fallbackLoader: 'style-loader'
        loader:
          loader: 'css-loader'
          query: sourceMap: !!devtool
    ]

  plugins: [
    new ExtractTextPlugin
      filename: '[name].[contenthash:7].css'
      allChunks: true
      disable: DEVELOPMENT
  ]

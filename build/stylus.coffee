ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports = ({devtool}) ->
  dependencies: ['stylus-loader@^2.3.1', 'stylus@^0.54.5']

  module:
    rules: [
      test: /\.styl$/
      loader: ExtractTextPlugin.extract
        fallbackLoader: 'style-loader'
        loader: [
          loader: 'css-loader'
          query: sourceMap: !!devtool
        ,
          loader: 'stylus-loader'
          query: sourceMap: !!devtool
        ]
    ]

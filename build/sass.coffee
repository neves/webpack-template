ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports = ({devtool}) ->
  dependencies: ['sass-loader@^4.0.2', 'node-sass@^3.13.0']
  module:
    rules: [
      test: /\.(scss|sass)$/
      loader: ExtractTextPlugin.extract
        fallbackLoader: 'style-loader'
        loader: [
          loader: 'css-loader'
          query: sourceMap: !!devtool
        ,
          loader: 'sass-loader'
          query: sourceMap: !!devtool
        ]
    ]

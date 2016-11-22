ExtractTextPlugin = require 'extract-text-webpack-plugin'

module.exports = ({devtool}) ->
  dependencies: ['less-loader@^2.2.3', 'less@^2.7.1']

  module:
    rules: [
      test: /\.less$/
      loader: ExtractTextPlugin.extract
        fallbackLoader: 'style-loader'
        loader: [
          loader: 'css-loader'
          query: sourceMap: !!devtool
        ,
          loader: 'less-loader'
          query: sourceMap: !!devtool
        ]
    ]

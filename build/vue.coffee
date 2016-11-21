ExtractTextPlugin = require 'extract-text-webpack-plugin'
webpack = require 'webpack'

extract = (loader, devtool, query = {}) ->
  query.sourceMap = !!devtool

  ExtractTextPlugin.extract
    fallbackLoader: 'vue-style-loader'
    loader: [
      loader: 'css-loader'
      query: sourceMap: !!devtool
    ,
      loader: "#{loader}-loader"
      query: query
    ]

module.exports = ({devtool}) ->
  dependencies: ['vue-loader@^9.9.5']

  resolve: extensions: ['.vue']
  # https://github.com/vuejs/vue-loader/blob/master/docs/en/configurations/extract-css.md#webpack-2x-210-beta25
  module:
    rules: [
      test: /\.vue$/
      loader: 'vue-loader'
      options:
        loaders:
          css: ExtractTextPlugin.extract
            fallbackLoader: 'vue-style-loader'
            loader:
              loader: 'css-loader'
              query: sourceMap: !!devtool

          scss:   extract 'sass',   devtool
          sass:   extract 'sass',   devtool, indentedSyntax: true
          less:   extract 'less',   devtool
          stylus: extract 'stylus', devtool
    ]

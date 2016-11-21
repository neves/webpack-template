ExtractTextPlugin = require 'extract-text-webpack-plugin'
webpack = require 'webpack'

module.exports = ({devtool}) ->
  dependencies: ['vue-loader@^9.9.5']

  resolve:
    extensions: ['.vue']
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

          scss: ExtractTextPlugin.extract
            fallbackLoader: 'vue-style-loader'
            loader: [
              loader: 'css-loader'
              query: sourceMap: !!devtool
            ,
              loader: 'sass-loader'
              query: sourceMap: !!devtool
            ]

          sass: ExtractTextPlugin.extract
            fallbackLoader: 'vue-style-loader'
            loader: [
              loader: 'css-loader'
              query: sourceMap: !!devtool
            ,
              loader: 'sass-loader'
              query:
                sourceMap: !!devtool
                indentedSyntax: true
            ]
    ]

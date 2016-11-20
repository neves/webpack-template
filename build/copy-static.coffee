CopyWebpackPlugin = require 'copy-webpack-plugin'

module.exports = (webpackConfig) ->
  dependencies: ['copy-webpack-plugin@^4.0.1']
  plugins: [
    new CopyWebpackPlugin [
      from: webpackConfig.context + '/static'
    ]
  ]

webpack = require 'webpack'

module.exports = (webpackConfig) ->
  dependencies: ['webpack-dev-server@^2.1.0-beta.11']

  output:
    filename: '[name].js' # without hash for dev

  devServer:
    contentBase: webpackConfig.context + '/static'
    clientLogLevel: 'warning'
    noInfo: true # https://webpack.js.org/configuration/dev-server/#devserver-noinfo-
    watchOptions:
      aggregateTimeout: 1
      ignored: /node_modules/

  plugins: [
    new webpack.NamedModulesPlugin()
  ]

webpack = require 'webpack'

module.exports = (webpackConfig) ->
  dependencies: ['webpack-dev-server@^2.1.0-beta.11']
  devtool: 'source-map' # javascript apenas
  output:
    filename: '[name].js' # without hash for dev
    publicPath: 'http://0.0.0.0:8080/' # precisa ser absoluto para sourceMap no css funcionar

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

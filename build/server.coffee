webpack = require 'webpack'

module.exports = ({context}) ->
  dependencies: ['webpack-dev-server@^2.1.0-beta.11']

  output:
    filename: '[name].js' # without hash for dev

  devServer:
    contentBase: context + '/static'
    clientLogLevel: 'warning'
    noInfo: true # https://webpack.js.org/configuration/dev-server/#devserver-noinfo-
    host: '0.0.0.0'
    watchOptions:
      aggregateTimeout: 1
      ignored: /node_modules/

  plugins: [new webpack.NamedModulesPlugin()]

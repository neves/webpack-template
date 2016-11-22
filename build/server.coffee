webpack = require 'webpack'

module.exports = ({context, devtool}) ->
  dependencies: ['webpack-dev-server@^2.1.0-beta.11']

  output:
    filename: '[name].js' # without hash for dev
    publicPath: if devtool then 'http://0.0.0.0:8080/' else '/'

  devServer:
    contentBase: context + '/static'
    clientLogLevel: 'warning'
    noInfo: true # https://webpack.js.org/configuration/dev-server/#devserver-noinfo-
    host: '0.0.0.0'
    headers:
      "Access-Control-Allow-Origin": "*"
      "Access-Control-Allow-Methods": "GET"
      "Access-Control-Allow-Headers": "X-Requested-With, content-type, Authorization"
    watchOptions:
      aggregateTimeout: 1
      ignored: /node_modules/

  plugins: [new webpack.NamedModulesPlugin()]

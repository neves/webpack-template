module.exports =
  output:
    filename: '[name].js' # without hash for dev
  devServer:
    clientLogLevel: 'warning'
    noInfo: true # https://webpack.js.org/configuration/dev-server/#devserver-noinfo-
    watchOptions:
      aggregateTimeout: 1
      ignored: /node_modules/

  plugins: [
    new webpack.NamedModulesPlugin()
  ]

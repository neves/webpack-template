module.exports =
  # https://webpack.js.org/configuration/devtool/
  devtool: 'eval-source-map' # apenas para javascript no dev
  output:
    publicPath: 'http://0.0.0.0:8080/' # precisa ser absoluto para sourceMap no css funcionar

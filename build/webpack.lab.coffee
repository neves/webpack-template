resolve = require('path').resolve

module.exports = require('webpack-merge-plus') [
  context: resolve __dirname, '../lab'
  entry: './index.js'
  output:
    filename: 'bundle.js'
  devServer:
    host: '0.0.0.0'
    port: 4000
  devtool: 'eval-source-map' if process.env.NODE_ENV is 'development'
,
  ({context, devServer, devtool}) ->
    output:
      path: context + '/dist'
      publicPath: if devtool then "http://#{devServer.host}:#{devServer.port}/" else '/'
]

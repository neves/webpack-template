resolve = require('path').resolve
webpack = require('webpack')

module.exports =
  dependencies: ['webpack@^2.1.0-beta.27']
  context: resolve __dirname, '../src' # // must be absolute
  entry:
    app: ['./index.js']
  output:
    path: resolve __dirname, '../dist' # must be absolute
    filename: '[name].[chunkhash:7].js'
    publicPath: '/'
  # devtool: 'source-map'
    # resolve:
    #   extensions: ['.js', '.coffee', '.vue']
  plugins: [
    new webpack.DefinePlugin
      'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV)
  ]

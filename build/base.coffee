resolve = require('path').resolve
webpack = require 'webpack'

module.exports = ({ENV}) ->
  dependencies: ['webpack@^2.1.0-beta.27']

  context: resolve __dirname, '../src' # // must be absolute
  stats:
    children: false # hide Child hidden modules messages

  entry:
    app: ['./index.js']

  output:
    path: resolve __dirname, '../dist' # must be absolute
    filename: ENV.js
    publicPath: '/'

  resolve:
    modules: [
      'node_modules'
      resolve __dirname, '../src' # add src to include_path
    ]
    extensions: ['.js']

  plugins: [
    new webpack.DefinePlugin
      'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV)
  ]

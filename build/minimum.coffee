resolve = require('path').resolve

module.exports =
  context: resolve __dirname, '../src' # // must be absolute
  entry:
    app: ['./index.js']
  output:
    path: resolve __dirname, '../dist' # must be absolute
    filename: '[name].js'
    publicPath: '/'
    # resolve:
    #   extensions: ['.js', '.coffee', '.vue']

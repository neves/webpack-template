module.exports = require('./vwpack') ({ENV}) -> [
  devtool: 'source-map' if ENV.sourcemap
  'paths'
  'paths-hash' if ENV.hash
  'webpack.common'

  'plugins/vendor'
  'plugins/clean-dist'
  'plugins/copy-static'
  'plugins/progress'
  'plugins/unused'
]

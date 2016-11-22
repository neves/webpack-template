module.exports = require('./vwpack') [
  # devtool: 'source-map'
  'webpack.common'

  'plugins/vendor'
  'plugins/clean-dist'
  'plugins/copy-static'
  'plugins/progress'
  'plugins/unused'
]

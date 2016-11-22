module.exports = require('./vwpack') ({env}) -> [
  # devtool: 'source-map'
  'paths'
  'paths-hash' if env.hash
  'webpack.common'

  'plugins/vendor'
  'plugins/clean-dist'
  'plugins/copy-static'
  'plugins/progress'
  'plugins/unused'
]

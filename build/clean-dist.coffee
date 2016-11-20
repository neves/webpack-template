CleanWebpackPlugin = require 'clean-webpack-plugin'

module.exports = (webpackConfig) ->
  plugins: [
    new CleanWebpackPlugin('*', {
      root: webpackConfig.output.path # // must be absolute
      verbose: true
      dry: true
    })
  ]

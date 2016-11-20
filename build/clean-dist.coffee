CleanWebpackPlugin = require 'clean-webpack-plugin'

module.exports = (webpackConfig) ->
  dependencies: ['clean-webpack-plugin@^0.1.14']
  plugins: [
    new CleanWebpackPlugin('*', {
      root: webpackConfig.output.path # // must be absolute
      verbose: true
      dry: false
    })
  ]

CleanWebpackPlugin = require 'clean-webpack-plugin'

module.exports = ({output:{path}}) ->
  dependencies: ['clean-webpack-plugin@^0.1.14']

  plugins: [
    new CleanWebpackPlugin('*', {
      root: path # // must be absolute
      verbose: true
      dry: false
    })
  ]

CopyWebpackPlugin = require 'copy-webpack-plugin'

module.exports = ({context}) ->
  dependencies: ['copy-webpack-plugin@^4.0.1']

  plugins: [
    new CopyWebpackPlugin [
      from: context + '/static'
    ]
  ]

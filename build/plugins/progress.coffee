ProgressBarPlugin = require 'progress-bar-webpack-plugin'
module.exports =
  dependencies: ['progress-bar-webpack-plugin@^1.9.0']
  plugins: [ new ProgressBarPlugin(clear: false) ]

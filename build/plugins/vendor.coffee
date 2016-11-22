webpack = require 'webpack'

module.exports =
  plugins: [
    new webpack.optimize.CommonsChunkPlugin
      name: 'vendor'
      # any required modules inside node_modules are extracted to vendor
      minChunks: (module) -> String(module.resource).indexOf('/node_modules/') >= 0

    # separate webpack manifest from app to manifest.[chunkhash].js
    new webpack.optimize.CommonsChunkPlugin
      name: 'manifest'
  ]

DashboardPlugin = require 'webpack-dashboard/plugin'

module.exports =
  dependencies: ['webpack-dashboard@^0.2.0']
  plugins: [ new DashboardPlugin() ]

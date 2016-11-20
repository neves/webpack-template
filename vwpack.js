// 'webpack-merge@^0.17.0', 'better-log@^1.3.3',
require('coffee-script/register')
const merge = require('webpack-merge').smart

function p (data) {
  console.log()
  require('better-log').setConfig({depth: 5})(data)
  console.log()
  return data
}

module.exports = env => {
  const configFile = `./build/webpack.${env}.coffee`
  const modules = require(configFile)
  var config = {}
  for (let module of modules) {
    let current = require(`./build/${module}`)
    if (current instanceof Function) {
      current = current(config)
    }
    config = merge(config, current)
  }
  delete config.dependencies
  return p(config)
}

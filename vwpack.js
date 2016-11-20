require('coffee-script/register')
const merge = require('webpack-merge').smart

function p (data) {
  require('better-log')(data)
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
  return config
}

// 'webpack-merge@^0.17.0', 'better-log@^1.3.3', "coffee-script": "^1.11.1", "nodemon": "^1.11.0"
require('coffee-script/register')
const WebpackMerge = require('webpack-merge')
const log = require('better-log').setConfig({depth: 5})

function merge(a, b) {
  if (b instanceof Function) {
    b = b(a)
  }
  return WebpackMerge.smart(a, b)
}

function p (data) {
  console.log("\n--------------------------------------------------------------------------------\n")
  log(data)
  console.log("\n--------------------------------------------------------------------------------\n")
  return data
}

function concat(modules) {
  var confs = []
  for (let module of modules) {
    let conf = require(`./build/${module}`)
    if (Array.isArray(conf)) {
      conf = concat(conf)
      confs = Object.assign(confs, conf)
    } else {
      confs[module] = conf
    }
  }
  return confs
}

module.exports = env => {
  const configFile = `./build/webpack.${env}`
  const modules = require(configFile)
  let confs = concat(modules)
  var config = {}
  for (let [name, conf] of Object.entries(confs)) {
    log(name)
    config = merge(config, conf)
  }
  console.log(config.dependencies.sort().join(' '))
  delete config.dependencies
  return p(config)
}

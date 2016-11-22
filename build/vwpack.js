// 'webpack-merge@^0.17.0', 'better-log@^1.3.3', "coffee-script": "^1.11.1", "nodemon": "^1.11.0"
require('coffee-script/register')
const WebpackMerge = require('webpack-merge')
const betterLog = require('better-log').setConfig({depth: 5})

function log (data) {
  if (process.env.DEBUG) {
    betterLog(data)
  }
}

function merge(a, b) {
  if (b instanceof Function) {
    b = b(a)
  }
  return WebpackMerge.smart(a, b)
}

function p (data) {
  log("\n--------------------------------------------------------------------------------\n")
  log(data)
  log("\n--------------------------------------------------------------------------------\n")
  return data
}

function concat(modules) {
  var confs = []
  for (let index = 0; index < modules.length; index++) {
    let module = modules[index]

    if (module === undefined) continue

    if (typeof module === 'string') {
      let conf = require(`./${module}`)
      if (Array.isArray(conf)) {
        conf = concat(conf)
        confs = Object.assign(confs, conf)
      } else {
        confs[module] = conf
      }
    } else {
      confs[index] = module
    }
  }
  return confs
}

function vwpack (ENV = {}, modules = []) {
  log(ENV)
  var config = {ENV}
  if (modules instanceof Function) {
    modules = modules(config)
  }
  let confs = concat(modules)

  for (let [name, conf] of Object.entries(confs)) {
    log(name)
    config = merge(config, conf)
  }

  log(config.dependencies.sort().join(' '))
  delete config.dependencies
  delete config.ENV
  return p(config)
}

module.exports = modules => ENV => vwpack(ENV, modules)

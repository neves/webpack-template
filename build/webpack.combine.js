// 'webpack-merge@^0.17.0', 'better-log@^1.3.3', "coffee-script": "^1.11.1", "nodemon": "^1.11.0"
require('coffee-script/register')
const mergePlus = require('webpack-merge-plus')
const betterLog = require('better-log').setConfig({depth: 5})

function log (data) {
  if (process.env.DEBUG) {
    betterLog(data)
  }
}

function isString (val) {
  return typeof val == 'string'
}

function requireAll (modules) {
  return modules.map(module => isString(module) ? require(`./${module}`) : module)
}

function requireNested (modules) {
  return modules.map(module => Array.isArray(module) ? requireAll(module) : module)
}

function combine (ENV = {}, modules) {
  ENV.NODE_ENV = process.env.NODE_ENV
  modules.unshift({ENV})
  modules = requireAll(modules)
  modules = requireNested(modules)
  modules = mergePlus(modules)

  log("\n--------------------------------------------------------------------------------\n")
  log(modules)
  log("\n--------------------------------------------------------------------------------\n")

  delete modules.dependencies
  delete modules.ENV

  return modules
}

module.exports = modules => env => combine(env, modules)

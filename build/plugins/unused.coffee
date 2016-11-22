UnusedFilesWebpackPlugin = require('unused-files-webpack-plugin').UnusedFilesWebpackPlugin
# exibe arquivos que não foram usados na compilação
module.exports =
  dependencies: ['unused-files-webpack-plugin@^3.0.0']
  plugins: [ new UnusedFilesWebpackPlugin(globOptions: ignore: 'static/**/*') ]

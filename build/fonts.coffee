PRODUCTION = process.env.NODE_ENV is 'production'

module.exports =
  module:
    rules: [
      test: /\.(woff2?|eot|ttf|otf)(\?.*)?$/
      loader: 'url-loader'
      options:
        name: if PRODUCTION then 'fonts/[name].[hash:7].[ext]' else 'fonts/[name].[ext]'
        limit: if PRODUCTION then 10000 else 512 # embed files < 10KB
    ]

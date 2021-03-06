PRODUCTION = process.env.NODE_ENV is 'production'

module.exports = ({ENV}) ->
  module:
    rules: [
      test: /\.(woff2?|eot|ttf|otf)(\?.*)?$/
      loader: 'url-loader'
      options:
        name: ENV.font
        limit: if PRODUCTION then 10000 else 512 # embed files < 10KB
    ]

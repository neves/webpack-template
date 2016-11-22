PRODUCTION = process.env.NODE_ENV is 'production'

module.exports = ({env}) ->
  dependencies: [
    'url-loader@^0.5.7'
    'file-loader@^0.9.0'
  ]

  module:
    rules: [
      test: /\.(png|jpe?g|gif|svg)(\?.*)?$/
      loader: 'url-loader'
      options:
        name: env.img
        limit: if PRODUCTION then 10000 else 1 # embed files < 10KB
    ]

module.exports =
  dependencies: ['pug@^2.0.0-beta6', 'pug-loader@^2.3.0']

  module:
    rules: [
      test: /\.pug$/
      loader: 'pug-loader'
    ]

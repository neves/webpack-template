module.exports = ({context}) ->
  dependencies: [
    'babel-loader@^6.2.8'
    'babel-core@^6.18.2'
    'babel-preset-es2015@^6.18.0'
    'babel-preset-stage-3@^6.17.0'
  ]

  module:
    rules: [
      test: /\.js$/
      loader: 'babel-loader'
      include: [context]
      options: cacheDirectory: true
    ]

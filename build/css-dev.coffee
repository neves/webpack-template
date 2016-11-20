module.exports =
  dependencies: [
    'css-loader@^0.26.0',
    'style-loader@^0.13.1'
  ]
  module:
    rules: [
      test: /\.css$/
      use: ['style-loader', 'css-loader?sourceMap']
    ]

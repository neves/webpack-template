module.exports = ({context}) ->
  dependencies: [
    'eslint-loader@^1.6.1'
    'eslint@^3.10.2'
    'babel-eslint@^7.1.1'
    'eslint-config-standard@^6.2.1'
    'eslint-plugin-standard@^2.0.1'
    'eslint-plugin-promise@^3.4.0'
    'eslint-codeframe-formatter@^1.0.2' # exibir código highlight com o erro
    'eslint-plugin-html@^1.7.0' # parse *.vue
  ]

  module:
    rules: [
      test: /\.(vue|js)$/
      loader: 'eslint-loader'
      include: [context]
      enforce: 'pre'
      options:
        cache: true
        formatter: require 'eslint-codeframe-formatter'
    ]

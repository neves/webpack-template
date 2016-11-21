console.clear()
const ENV = process.env.NODE_ENV
const DEVELOPMENT = ENV === 'development'
console.log('index.js', ENV)

if (DEVELOPMENT) {
  console.info('este código vai sumir no dist')
}
// require ocorre após import, mesmo vindo antes no código, não misturar require com import
// https://github.com/webpack/webpack/issues/1973#issuecomment-185744317
// importando css pelo javascript para poder gerar vendor, não funciona se importado dentro do css
import 'reset-css'
import 'font-awesome/css/font-awesome.css'

import './app.css'
import './app.scss'
import './app.less'

import './routes'
import './app'
import './config.yml'
require('./config')

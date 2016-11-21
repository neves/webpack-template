console.clear()
const ENV = process.env.NODE_ENV
const DEVELOPMENT = ENV === 'development'
console.log('index.js', ENV)
// require ocorre após import, mesmo vindo antes no código, não misturar require com import
// https://github.com/webpack/webpack/issues/1973#issuecomment-185744317
// importando css pelo javascript para poder gerar vendor, não funciona se importado dentro do css
import 'reset-css'
import './app.css'
import './app.scss'

import './app'

const ENV = process.env.NODE_ENV
const DEVELOPMENT = ENV === 'development'
console.log('index.js', ENV, DEVELOPMENT)
require('./app.css')

V = (name)-> (name) -> require "./views/#{name}.vue"

module.exports = [
    name: 'home'
    path: '/home'
    alias: '/'
    component: V 'Home'
    meta: title: 'Home'
  ,
    name: 'about'
    path: '/about'
    component: V 'About'
    meta: title: 'About'
]

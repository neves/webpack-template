<template>
<div class="view-app">
  <h1>VueApp {{ msg }}</h1>
  <input v-model="msg">
  <ol>
    <li>TODO</li>
  </ol>
  <coffee>
</div>
</template>

<script>
import Coffee from 'components/Coffee'

export default {
  components: {Coffee},
  data () {
    return {
      msg: 'Hello!'
    }
  }
}
</script>

<style>
.view-app h1 {
  font-weight: bold;
  color: green;
}
</style>

<style lang="scss">
h1 {
  text-align: center;
}
</style>

<style lang="sass">
ol
  li
    color: red
</style>

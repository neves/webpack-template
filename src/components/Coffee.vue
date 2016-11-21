<template lang="pug">
.v-coffee
  h2 {{ msg }}
</template>

<script lang="coffee">
export default data: -> msg: 'Coffee'
</script>

<style lang="less">
.v-coffee {
  padding: 10px;
  border: 1px solid purple;
}
</style>

<style lang="stylus">
.v-coffee
  h2
    text-align center
</style>

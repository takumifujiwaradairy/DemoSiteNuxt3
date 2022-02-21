<template>
  <div>
    <button @click="addLike(id)">Like</button>
    <button>DidLike</button>
    {{id}}
  </div>
</template>

<script>
import { mapActions } from 'vuex';
export default {
  props: ['id'],
  methods: {
    ...mapActions(['addLike']),
  }
}
</script>

<style>

</style>